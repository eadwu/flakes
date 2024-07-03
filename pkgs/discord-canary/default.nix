{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.444";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0sc7qkqf9r4nbj39q5jv3g9sjra7dlmmzd0bdkvj299a0kg9rs16";
    };
  }
)
