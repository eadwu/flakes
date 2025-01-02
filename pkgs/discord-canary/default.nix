{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.552";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "06zfkl46bgw0wqc5w8fyz0v210ja5r6037pwk1jiq60kwv3xc6dc";
    };
  }
)
