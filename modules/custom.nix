inputs:

{ config, pkgs, lib, ... }:

with lib;

{
  imports =
    [
      inputs.self.nixosModules.r-36
    ];

  options = {
    networking.blacklistFiles = mkOption {
      type = types.listOf types.path;
      default = [];
    };

    networking.whitelist = mkOption {
      type = types.listOf types.str;
      default = [];
    };
  };

  config = {
    boot.kernelPackages = pkgs.linuxPackages_custom;

    networking.blacklistFiles = [
      (inputs.sb-hosts + "/alternates/fakenews-gambling-porn/hosts")
      (inputs.dd-hosts + "/docs/lists/ads-and-tracking-extended.txt")
      (inputs.dd-hosts + "/docs/lists/amp-hosts-extended.txt")
      (inputs.dd-hosts + "/docs/lists/hate-and-junk-extended.txt")
      (inputs.dd-hosts + "/docs/lists/tracking-aggressive-extended.txt")
      (inputs.uhb-hosts + "/hosts/hosts0")
      (inputs.uhb-hosts + "/hosts/hosts1")
      (inputs.quantum-ad-list + "/For hosts file/The_Quantum_Ad-List.txt")
      inputs.someone-who-cares
      inputs.energized-unified
      inputs.energized-regional
    ];

    networking.hostFiles =
      let
        whitelistFile = pkgs.writeText "hosts-whitelist"
          (concatStringsSep "\n" config.networking.whitelist);

        # What this does:
        # Combines the blacklists and then filters out comments and removes duplicate domains
        #   Since we can never truly trust external blocklists, remove the ip address they say to redirect to
        #   Awk pattern accounts for multiple domains on a single line
        #     See https://stackoverflow.com/questions/4198138/printing-everything-except-the-first-field-with-awk/22908787
        # Apply the whitelisted domains using the filter list
        blacklistFile = pkgs.runCommandNoCC "blacklist-hosts" {
          nativeBuildInputs = with pkgs; [ ripgrep ];
        } ''
          cat ${escapeShellArgs config.networking.blacklistFiles} | \
            rg . | rg -v '^#' | awk 'sub($1 FS,"")' | \
            sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//' | \
            sort | uniq > hosts.txt
          ${optionalString (config.networking.whitelist != []) ''
          cp hosts.txt hosts.txt.orig
          rg --invert-match --file=${whitelistFile} hosts.txt.orig > hosts.txt
          ''}
          sed 's/^/0.0.0.0 /' hosts.txt > $out
          ${optionalString (config.networking.enableIPv6) ''
          sed 's/^/:: /' hosts.txt >> $out
          ''}
        '';
      in
      [ blacklistFile ];

    networking.whitelist = [
      "^[^.]*$" # if there isn't any dots, it probably isn't a domain
      "^://.*/.*$" # invalid domain
      "^www.rarlab.com$" # RAR archiver source...
      "^stats.stackexchange.com$" # stackexchange...
      "^tags.tiqcdn.com$" # weather.com
      "^lists.gnu.org$" # GNU...
    ];

    security.pam.loginLimits = [
      # maximum realtime priority
      { domain = "@audio";
        type = "-";
        item = "rtprio";
        value = "90"; }
      # maximum locked-in-memory address space (KB)
      { domain = "@audio";
        type = "-";
        item = "memlock";
        value = "unlimited"; }
    ];
  };
}
