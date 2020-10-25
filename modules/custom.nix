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

    boot.kernelParams = [
      # General responsivity enhancements
      "io_delay=none"
    ];

    networking.blacklistFiles = [
      (inputs.sb-hosts + "/alternates/fakenews-gambling-porn/hosts")
      (inputs.dd-hosts + "/docs/lists/ads-and-tracking-extended.txt")
      (inputs.dd-hosts + "/docs/lists/amp-hosts-extended.txt")
      (inputs.dd-hosts + "/docs/lists/hate-and-junk-extended.txt")
      (inputs.dd-hosts + "/docs/lists/tracking-aggressive-extended.txt")
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
        # Apply the whitelisted domains using
        blacklistFile = pkgs.runCommandNoCC "blacklist-hosts" {} ''
          cat ${escapeShellArgs config.networking.blacklistFiles} | \
            grep . | grep -v '^#' | awk '{print $2}' | \
            sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//' | \
            sort | uniq > hosts.txt
          ${optionalString (config.networking.whitelist != []) ''
          cp hosts.txt hosts.txt.orig
          grep --invert-match --file=${whitelistFile} hosts.txt.orig > hosts.txt
          ''}
          sed -i 's/^/0.0.0.0 /' hosts.txt > $out
          ${optionalString (config.networking.enableIPv6) ''
          sed -i 's/^/:: /' hosts.txt >> $out
          ''}
        '';
      in [ blacklistFile ];

    networking.whitelist = [
      "^stats.stackexchange.com$"
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

    services.irqbalance.enable = lib.mkForce false;
  };
}
