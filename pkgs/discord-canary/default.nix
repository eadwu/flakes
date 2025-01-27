{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.575";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0afj9nr4z0cpqyj0qwh81yb895a5qzn0b4gx23cz6x7vxgcsqcsm";
    };
  }
)
