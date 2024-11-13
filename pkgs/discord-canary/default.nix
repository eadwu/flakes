{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.517";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1li0m02vf6mgf47zr7y1fym9z9cv0wdbbxvkp4d1hc5bf9ypfaz4";
    };
  }
)
