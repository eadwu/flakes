{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.287";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "04kqkpmm81vhlgl3lz9xlcy445qamyy48wbyajhxjb0qbddhpa2r";
    };
  }
)
