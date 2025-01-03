{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.554";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0x86g7yvq0mm2vz0a1407w65f0wwsrn3xng2gpglpg2h8jd3d2zf";
    };
  }
)
