{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.322";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0bkwrlkgc2r1jmvj2fsj0nik7v8dkf8wxy9vgddxkd2i1y9xvck7";
    };
  }
)
