{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.313";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0n6wi5bg01n8ahshs5qxvpsg4xq49h4p8jsbmzszyzzdkndcr95c";
    };
  }
)
