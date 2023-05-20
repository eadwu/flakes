{ fetchurl
, discord-canary
, autoPatchelfHook
, atomEnv
, libxshmfence
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.153";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "08zld59gkp696hd04xzpkzknb7ldbw94bi7m4g7vz4a150wvgbwr";
    };

    nativeBuildInputs = (oldAttrs.nativeBuildInputs or [ ]) ++ [
      autoPatchelfHook
    ];

    buildInputs = (oldAttrs.buildInputs or [ ])
      ++ atomEnv.packages
      ++ [ libxshmfence ];
  }
)
