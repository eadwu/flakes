{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.590";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1fhy4ln3qbssl5ldr5bpbzvmp3ayk1r0svf6iwsk9fclhjrjb32p";
    };
  }
)
