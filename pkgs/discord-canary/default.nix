{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.634";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "13qqkw90aw51px9v3n22r9wpkhq3n0jmijzjldhhmlw6iyms8lc4";
    };
  }
)
