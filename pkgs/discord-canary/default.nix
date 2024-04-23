{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.362";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "16rbwz6k04pmky7m2xzjv8rmm2y5wgvmd2jmypi4nsphmw4jclyz";
    };
  }
)
