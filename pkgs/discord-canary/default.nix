{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.557";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "18bgnjhykdgqfp8z6jh8k1pl8qmhxbpx79lhz4l4zcppzkjpjv8x";
    };
  }
)
