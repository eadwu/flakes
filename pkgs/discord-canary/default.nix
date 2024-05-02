{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.377";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0ad9bpbvsyymiqbmm3x8cd877ai4xansq9pvyqjnhhmk7dwj8z3i";
    };
  }
)
