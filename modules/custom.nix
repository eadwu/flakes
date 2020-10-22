inputs:

{ config, pkgs, lib, ... }:

with lib;

{
  imports =
    [
      inputs.self.nixosModules.r-36
    ];

  options = {
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

    environment.etc.hosts.source = let
        whitelistFile = pkgs.writeText "hosts-whitelist"
          (concatStringsSep "\n" config.networking.whitelist);
      in
      lib.mkForce (pkgs.runCommandNoCC "hosts" {} ''
        cat ${escapeShellArgs config.networking.hostFiles} > $out
        ${optionalString (config.networking.hostFiles != []) ''
        cp $out hosts-original.txt
        grep --invert-match --file=${whitelistFile} hosts-original.txt > $out
        ''}
      '');

    networking.hostFiles = [
      inputs.urlhaus
      inputs.energized-unified
      inputs.energized-regional
    ];

    networking.whitelist = [
      "stats.stackexchange.com"
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
