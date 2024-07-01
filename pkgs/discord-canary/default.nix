{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.440";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "00fcf3y0sfrz8v7qy0magys6nzlxjzz7k7ascyd1h46izv76l9d0";
    };
  }
)
