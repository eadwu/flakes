{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.454";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "179ky0sj0sqvjq998d5yv6p1x559vpmw4xpsrhri6gk9dpq0nl71";
    };
  }
)
