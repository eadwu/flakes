{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.272";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1lwybbm1x1zqzbynza8yf2amsgsi1nbvryn2iaaqr8cjz3q3ghj6";
    };
  }
)
