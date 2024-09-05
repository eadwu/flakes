{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.480";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1nz6srxhrcfzp5x4gy9sfixyxw09m2bspq7v5xb4vipcz44bjxqd";
    };
  }
)
