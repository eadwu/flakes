{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.372";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "16smq9jr9rgh3nqxg7zh1nq2y1x0a1cg10q59cd50mi4wbfgb90p";
    };
  }
)
