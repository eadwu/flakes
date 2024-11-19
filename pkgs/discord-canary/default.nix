{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.520";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1jdb7dl1dnhzc5ydf9qjq65bxxlji9k4x4s3nq0haidjjshm6gc3";
    };
  }
)
