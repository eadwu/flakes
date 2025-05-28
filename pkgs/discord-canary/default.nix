{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.686";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "05knbgwjp34d8wbrsmz5n0xyxdzig44mr4c32ls9xy2i4v4ggb5x";
    };
  }
)
