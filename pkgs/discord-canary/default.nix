{ fetchurl
, discord-canary
, autoPatchelfHook
, atomEnv
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.113";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1hsqxx7fhnsdi6r08bsx13bxfn8aam339c7x9hyk096swplzzi7j";
    };

    nativeBuildInputs = (oldAttrs.nativeBuildInputs or [ ]) ++ [
      autoPatchelfHook
    ];

    buildInputs = (oldAttrs.buildInputs or [ ]) ++ atomEnv.packages;
  }
)
