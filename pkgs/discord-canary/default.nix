{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.625";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1is8gij4yh3mx7hshsqfb8wpdpfv0sm6mnq4n78qw4i5i361fnf5";
    };
  }
)
