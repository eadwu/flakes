{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.400";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0vs7ig1d99jbn1rd8dkmd1lx4n2a439rj6q3pywl69fm1ir6wi36";
    };
  }
)
