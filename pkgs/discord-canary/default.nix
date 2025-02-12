{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.588";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "05g2vd7a0bv19wg3rdi1lrnfgy8l3sl33qnfz39bsxrn0wss4xmb";
    };
  }
)
