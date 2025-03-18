{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.610";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1k1nr9jbzx9yzvjdnf7i4knriaw8d3bpma1kzlqb0bxkjkpzksz3";
    };
  }
)
