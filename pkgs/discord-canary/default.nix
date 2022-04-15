{ fetchurl
, discord-canary
, autoPatchelfHook
, atomEnv
, libxshmfence
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.135";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "19ri82pwz43wma9kyy2109wdbrmq2zxy2bq03l3i7m4j2pfbwqbn";
    };

    nativeBuildInputs = (oldAttrs.nativeBuildInputs or [ ]) ++ [
      autoPatchelfHook
    ];

    buildInputs = (oldAttrs.buildInputs or [ ])
      ++ atomEnv.packages
      ++ [ libxshmfence ];
  }
)
