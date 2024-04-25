{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.365";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0mmphvlh9sxjzbnlan7ahkp4z8jmrrdyql7g9fy42wk9d3kwb0db";
    };
  }
)
