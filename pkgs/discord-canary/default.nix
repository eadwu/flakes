{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.581";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "13rjykgfd3gnvqn3ipbw6hx2vkywl40aix5mw9z51wiaxbaywi1x";
    };
  }
)
