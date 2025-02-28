{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.600";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1sqnq12k9i8wafji0zc8p0d3xz0i08z73nw7wyfgdl3qwq0g0p3v";
    };
  }
)
