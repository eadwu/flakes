{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.281";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1g3gb4wd97wxqgbsm2q0f7r4yvzawz3bzj4i3azxlz8lm6i4k6ny";
    };
  }
)
