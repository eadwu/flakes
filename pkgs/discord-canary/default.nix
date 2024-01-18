{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.250";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1bgzbrd1hpc64b8bj92rxqqw647svs8v45xk2fxv8ifbvv4gf5b5";
    };
  }
)
