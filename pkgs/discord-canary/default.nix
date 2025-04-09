{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.632";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0x1y5zxcaxvjm43jhh5vijaq2bqf8b7r0rwwzas7q0mb3x3wzb7l";
    };
  }
)
