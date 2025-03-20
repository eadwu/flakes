{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.616";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1zla2sqqid6b0sfifbm25xgnw9nncgdzrjl3hl2m1nbn7lvfi8v7";
    };
  }
)
