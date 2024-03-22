{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.323";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1b8l99r4chy8bxd37mlx27vjg7sy07d0s4ff9w1q1rnxmkmy05wf";
    };
  }
)
