{ fetchurl
, discord-canary
, autoPatchelfHook
, atomEnv
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.114";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0j3w4jf4jisrpz03462sqjsrvjw50kqqq3psyympw0jb1wjccc41";
    };

    nativeBuildInputs = (oldAttrs.nativeBuildInputs or [ ]) ++ [
      autoPatchelfHook
    ];

    buildInputs = (oldAttrs.buildInputs or [ ]) ++ atomEnv.packages;
  }
)
