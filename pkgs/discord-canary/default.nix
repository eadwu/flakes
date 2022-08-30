{ fetchurl
, discord-canary
, autoPatchelfHook
, atomEnv
, libxshmfence
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.137";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0i6d6kdpkwcn5gf6fcsvv8nsqbc4h4w2fbjnxmwgw341dhxqmdvn";
    };

    nativeBuildInputs = (oldAttrs.nativeBuildInputs or [ ]) ++ [
      autoPatchelfHook
    ];

    buildInputs = (oldAttrs.buildInputs or [ ])
      ++ atomEnv.packages
      ++ [ libxshmfence ];
  }
)
