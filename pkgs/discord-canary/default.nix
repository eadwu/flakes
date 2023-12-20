{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.230";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0rxcqcdrcaxmahsb1jqdh2fsz6r5bpzxsgmr89vrnf2qy8i94lk6";
    };
  }
)
