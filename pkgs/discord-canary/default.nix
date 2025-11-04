{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.798";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1w39sia7wdqp4ps3a3jmhsalm3fmzcjmiyy1hnv71q3zx0a46wbl";
    };
  }
)
