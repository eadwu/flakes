{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.584";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0aw16sixyqnm7g5l0lxmbiijf2m1g2n6jj1wfd6sr1frlbcpnxr5";
    };
  }
)
