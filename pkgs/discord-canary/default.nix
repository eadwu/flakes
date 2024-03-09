{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.297";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1g1hjd8nlfqqgknv7s464qn408xc58ifn79p3y717whnvqj1kz1r";
    };
  }
)
