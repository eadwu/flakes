{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.599";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0mvsjl9ni14mc4zm5ycgyj9vf383ypv76vi9gk2zrbhnx0fgmgj8";
    };
  }
)
