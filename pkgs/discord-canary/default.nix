{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.429";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1n52sz58wjq0s6j8mzfl0dsblnil8356pjj0fn1grwfn8pdi1313";
    };
  }
)
