{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.195";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "027cgi08kfqlrq0c1a63wkqs3kv8wnqn0sybp9iy58gwg8rssvrr";
    };
  }
)
