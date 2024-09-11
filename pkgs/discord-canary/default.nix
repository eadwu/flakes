{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.486";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0qfl7qq1g88lcwlfk9w2bzqrmkk1lzghwibgqiiwh4vfylj4pl6p";
    };
  }
)
