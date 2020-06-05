{ config, pkgs, lib, ... }:

with lib;

{
  imports =
    [
      ./r-36.nix
    ];

  config = {
    boot.kernelPackages = pkgs.linuxPackages_custom;

    boot.kernelParams = [
      # General responsivity enhancements
      "io_delay=none"
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
