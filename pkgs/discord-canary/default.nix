{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.814";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1zjk8ab8a35mr2n5f9k1mvnzxmv3b9b66m00c7dd2n746rgahkfz";
    };
  }
)
