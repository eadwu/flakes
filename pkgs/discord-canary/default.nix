{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.347";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "10xb0g0b7iqqyx2k8hikxxn7mxxwj9n1hhprcfdkdbfcss5aw51d";
    };
  }
)
