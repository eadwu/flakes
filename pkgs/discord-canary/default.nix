{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.563";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0rijhkh3s1ix84a2qk8zx7ia75w08v5jms6jjf5w2xayqy2ygk1i";
    };
  }
)
