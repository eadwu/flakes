{ fetchurl
, discord-canary
, autoPatchelfHook
, atomEnv
, libxshmfence
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.166";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "02sa34jjwwpf82w492qpk9k2jjfg2lkh1f2z4w5l0zyll6jwjikd";
    };

    nativeBuildInputs = (oldAttrs.nativeBuildInputs or [ ]) ++ [
      autoPatchelfHook
    ];

    buildInputs = (oldAttrs.buildInputs or [ ])
      ++ atomEnv.packages
      ++ [ libxshmfence ];
  }
)
