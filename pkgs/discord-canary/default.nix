{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.490";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0ivmcb6q9ik4v1mbxj0bj6191z6zswnhn6dvjmf5ijs0g5fdfzmw";
    };
  }
)
