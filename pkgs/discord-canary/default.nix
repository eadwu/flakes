{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.443";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0vb2iyqab5p4cwsanw0m1cvycmyjsjnsjmqgkg5jwnslr4y18k37";
    };
  }
)
