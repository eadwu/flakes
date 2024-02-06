{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.271";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "03j7g6hc1iyk77hhy8cr12jg91hnn37yi4lfjsgxgxhiwlxb7xqw";
    };
  }
)
