{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.258";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0kcjd72qzrgx1ddafi9f4jwksbp2j14kkb5d1pw9dkzd21vgzlay";
    };
  }
)
