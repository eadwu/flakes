{ fetchurl
, discord-canary
, autoPatchelfHook
, atomEnv
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.118";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1ar4d6mgn248h6pqcw5ra787padsxyzfkgf9yf62ypn1zrxa9sxq";
    };

    nativeBuildInputs = (oldAttrs.nativeBuildInputs or [ ]) ++ [
      autoPatchelfHook
    ];

    buildInputs = (oldAttrs.buildInputs or [ ]) ++ atomEnv.packages;
  }
)
