{ config, pkgs, lib, ... }:

with lib;

let
  cfg = config.services.pipewire;
in {
  options.services.pipewire = {
    configFile = mkOption {
      type = types.path;
      default = pkgs.pipewire + "/etc/pipewire/pipewire.conf";
    };
  };

  config = mkIf cfg.enable {
    boot.kernelModules = [ "snd_seq" "snd_seq_midi" ];
    environment.systemPackages = [ pkgs.pipewire.lib ];

    sound.enable = true;
    security.rtkit.enable = true;
    services.udev.packages = [ pkgs.pipewire ];
    systemd.user.services.pipewire.path = [ pkgs.pipewire ];

    environment.etc = {
      "asound.conf".source = pkgs.writeText "asound.conf" ''
        defaults.pcm.rate_converter "speexrate_best"
        defaults.pcm.libs.speex = ${pkgs.alsaPlugins}/lib/alsa-lib/libasound_module_rate_speexrate_best.so ;

        <${pkgs.pipewire}/share/alsa/alsa.conf.d/50-pipewire.conf>
        pcm_type.pipewire {
          libs.native = ${pkgs.pipewire.lib}/lib/alsa-lib/libasound_module_pcm_pipewire.so ;
        }
        pcm.!default {
          @func getenv
          vars [ PCM ]
          default "plug:pipewire"
          playback_mode "-1"
          capture_mode "-1"
        }

        ${config.sound.extraConfig}
      '';

      "pipewire/pipewire.conf".source = config.services.pipewire.configFile;
    };

    nixpkgs.overlays = [
      (final: prev:
        with final;
        {

          pipewire = prev.pipewire.overrideAttrs (oldAttrs: {
            postPatch = (oldAttrs.postPatch or "") + ''
              sed -i 's@PIPEWIRE_CONFIG_DIR.*@\"/etc/pipewire/pipewire.conf\"@' src/daemon/daemon-config.c
            '';

            buildInputs = (oldAttrs.buildInputs or []) ++ [
              xmltoman
            ];

            mesonFlags = (oldAttrs.mesonFlags or []) ++ [
              "-Ddocs=true"

              "-Dlibjack-path=${placeholder "lib"}/lib"
              "-Dlibpulse-path=${placeholder "lib"}/lib"

              "-Daudiotestsrc=true"
              "-Dffmpeg=true"
              "-Dtest=true"
              "-Dvideotestsrc=true"
              "-Dvolume=true"
            ];
          });

          xmltoman = stdenv.mkDerivation rec {
            pname = "xmltoman";
            version = "0.4";

            src = fetchurl {
              url = "https://downloads.sourceforge.net/project/${pname}/${pname}/${pname}-${version}.tar.gz/${pname}-${version}.tar.gz";
              sha256 = "1c0lvzr7kdy63wbn1jv6s126ds7add3pxqb0vlxd3v5a2sir91wl";
            };

            postPatch = ''
              patchShebangs xmltoman
            '';

            buildInputs = [ perlPackages.perl perlPackages.XMLParser ];

            makeFlags = [
              "PREFIX=${placeholder "out"}"
            ];
          };

        })
    ];
  };
}
