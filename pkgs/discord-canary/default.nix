{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.306";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0qk3iwnkar1xn9gdn7aqz8h70czs30m40qlhzpcrlgjgfcpr0y7q";
    };
  }
)
