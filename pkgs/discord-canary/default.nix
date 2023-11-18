{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.185";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "10vq9w0m0qr2gfgi8fyl2qv82ka0ibqlvf729bkmq4xzlkx0gi2s";
    };
  }
)
