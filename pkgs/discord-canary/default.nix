{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.239";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "00wbkgz8n2hdb6rmlhbf2j74md311dbxnbzc36y3pm2jx6r9mgfm";
    };
  }
)
