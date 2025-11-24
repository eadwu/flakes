{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.813";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "132c8rbyx9v29fshwji3bv4bkgfa6m7y3q9y5sfi2cbkafff3ns5";
    };
  }
)
