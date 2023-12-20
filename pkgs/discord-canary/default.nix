{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.231";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1dbiw73sh4wx4p1yyj1djpvn2sgxyy0358ghigwsn8yqn90cg5k5";
    };
  }
)
