{ fetchurl
, discord-canary
, autoPatchelfHook
, atomEnv
, libxshmfence
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.157";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1z2y4jh1ymhfql657w2vh4kq60qpma6vwxi8mshismwix72bkb2g";
    };

    nativeBuildInputs = (oldAttrs.nativeBuildInputs or [ ]) ++ [
      autoPatchelfHook
    ];

    buildInputs = (oldAttrs.buildInputs or [ ])
      ++ atomEnv.packages
      ++ [ libxshmfence ];
  }
)
