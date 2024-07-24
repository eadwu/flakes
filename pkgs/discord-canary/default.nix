{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.457";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0h8klw5l51imxa1f07fm54hbp7b7xa2jbdjyxwcxwx8g0s6f6m14";
    };
  }
)
