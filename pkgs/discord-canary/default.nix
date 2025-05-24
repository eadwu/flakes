{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.685";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1bmkpyrfvnqcvgzmvh8rnsjr1gw4dh3sba69rz4n13d3k4cq11r8";
    };
  }
)
