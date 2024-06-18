{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.426";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0q6ccaz6s55gy9rzx91pclkrb2dd2r6g1si13nsd0nxsj2dfadbk";
    };
  }
)
