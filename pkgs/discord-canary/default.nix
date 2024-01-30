{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.265";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "149jc4prhh7fx0c14j6hmh51nl32nsxvismcqnrg1jn5ckd3b2mq";
    };
  }
)
