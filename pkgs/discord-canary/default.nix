{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.586";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "07dgw0i280m0nm02nbqnj32w10jqzj0ah4lmd3hkylhvjlrzm57a";
    };
  }
)
