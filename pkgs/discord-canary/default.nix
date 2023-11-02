{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.174";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "18a1bgd80qjxdf47kpqx3cy2fqhx0pl7pfvx7xarhi0b6fpm671g";
    };
  }
)
