{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.564";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "10mj82zii6jmzvsb4vmidw3kyz0m031blb6pq4i79v3c3n8xjw4x";
    };
  }
)
