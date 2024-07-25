{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.459";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "05xvkqvzpri25yn92k1ly6cd2x88jacmskd39i8y3zgz2bvfj7gh";
    };
  }
)
