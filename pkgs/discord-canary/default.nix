{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.189";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "16kx1gm87bfdh6gd4q6kk956yl87wa2r2n4qm7i12wwv12c6bll5";
    };
  }
)
