{ fetchurl
, discord-canary
, autoPatchelfHook
, atomEnv
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.107";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "14xk8sydv1i39x29fzw8p71a93xgi95m7h3szybxxarq740fjkl6";
    };

    nativeBuildInputs = (oldAttrs.nativeBuildInputs or [ ]) ++ [
      autoPatchelfHook
    ];

    buildInputs = (oldAttrs.buildInputs or [ ]) ++ atomEnv.packages;
  }
)
