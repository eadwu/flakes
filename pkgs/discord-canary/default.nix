{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.565";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1c3bh6p3j7v053bypqj5nsnc8hldldh8dlwghwa6gxvjz7g6w7n8";
    };
  }
)
