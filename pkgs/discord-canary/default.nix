{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.368";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0pxm7aw3g3w771cl15dfrdms98i3qqlqik7igd7d4xvlx5x1i3mf";
    };
  }
)
