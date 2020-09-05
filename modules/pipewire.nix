{ config, pkgs, lib, ... }:

with lib;

let
  cfg = config.services.pipewire;
in {
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
    };

    nixpkgs.overlays = [
      (final: prev:
        with final;
        {
          pipewire = prev.pipewire.overrideAttrs (oldAttrs: {
            mesonFlags = (oldAttrs.mesonFlags or []) ++ [
              "-Dlibjack-path=${placeholder "lib"}/lib"
              "-Dlibpulse-path=${placeholder "lib"}/lib"
            ];
          });
        })
    ];
  };
}
