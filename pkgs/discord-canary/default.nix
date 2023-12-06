{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.210";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0nf0v4vfi5l1wadc3ha6qacdw9i14gcydrzsbyl8hamg3nk54bd8";
    };
  }
)
