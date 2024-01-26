{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.257";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1h9c3wfp0j25hsr7xp0s3za3737i4y9rqpyiv8r8f1w4c96h41fq";
    };
  }
)
