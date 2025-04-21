{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.652";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "18g9sxcrjc0nzgnn9nzddw2rq0hhcrsdw8fs6qw8hbbnb9p4yxdd";
    };
  }
)
