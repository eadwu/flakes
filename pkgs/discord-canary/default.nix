{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.510";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0yd2v113ad6vzipg7skpi7w9ydrhj8wp4kw3gdsmjjrwsrk6dk17";
    };
  }
)
