{ config, pkgs, lib, ... }:

with lib;

{
  options.services.pipewire = {
    configFile = mkOption {
      type = types.path;
      default = pkgs.pipewire + "/etc/pipewire/pipewire.conf";
    };
  };

  config = mkIf config.services.pipewire.enable {
    boot.kernelModules = [ "snd_seq" "snd_seq_midi" ];
    environment.systemPackages = with pkgs; [ pipewire.lib ];

    sound.enable = true;
    security.rtkit.enable = true;
    systemd.user.services.pipewire.path = with pkgs; [ pipewire ];

    environment.etc = {
      "asound.conf".source = pkgs.writeText "asound.conf" ''
        defaults.pcm.rate_converter "speexrate_best"
        defaults.pcm.libs.speex = ${pkgs.alsaPlugins}/lib/alsa-lib/libasound_module_rate_speexrate_best.so ;

        <${pkgs.pipewire}/share/alsa/alsa.conf.d/50-pipewire.conf>
        pcm_type.pipewire {
          libs.native = ${pkgs.pipewire.lib}/lib/alsa-lib/libasound_module_pcm_pipewire.so
        }
        <${pkgs.pipewire}/share/alsa/alsa.conf.d/99-pipewire-default.conf>

        ${config.sound.extraConfig}
      '';

      "pipewire/pipewire.conf".source = config.services.pipewire.configFile;
    };
  };
}
