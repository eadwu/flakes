{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.607";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1qw0r8csfj9fbi6j1yc0ggf2xv2h01ij1wi51lydlbqzq3ihxiyp";
    };
  }
)
