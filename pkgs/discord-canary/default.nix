{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.356";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "14xvwxy6x3lc3adsjwqfsz6j7r2yaa1kf9y918gkgdxgv2vzx1zk";
    };
  }
)
