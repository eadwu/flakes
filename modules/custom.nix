{ config, pkgs, lib, ... }:

with lib;

{
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
  };
}
