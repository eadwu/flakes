{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.601";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1yyrag2vimzhvwlrc0fkkl7lfhhzbnq7fzqj7knkr3awqflcg9a6";
    };
  }
)
