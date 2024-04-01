{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.327";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0nn7vlg4mkvhy9f6rgwkahcgvi8bkhlndd1d4lz92qy4rn1b5ix8";
    };
  }
)
