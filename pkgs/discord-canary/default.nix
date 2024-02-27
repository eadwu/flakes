{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.284";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0kcyafs1ag8gy9gx8iz7yfxyg6syl5b6lmh1cxnk7ladsyg1rv7m";
    };
  }
)
