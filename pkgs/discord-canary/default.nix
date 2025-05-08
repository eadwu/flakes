{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.671";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "14a2n0jy2dpagb2rklnrahn5cwzmh3nxwzjnhx3h91vlb8b03873";
    };
  }
)
