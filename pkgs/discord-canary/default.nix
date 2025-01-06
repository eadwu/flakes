{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.556";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0g7iv2p30a6j06r3yc9s74v20g8cfrcdq3k4j8xf3miypmhg9ag6";
    };
  }
)
