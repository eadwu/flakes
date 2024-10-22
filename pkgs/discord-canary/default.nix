{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.507";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "04ns1pzwxqn5nzl3gbcymbdqhrn8pyrhyzh7zp7233v9lgvkp04h";
    };
  }
)
