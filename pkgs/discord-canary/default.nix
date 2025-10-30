{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.791";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1nfpas4fgk6i0r6vl5iq7pfnfvipzyqczh5csayc9bamgg3i5nvc";
    };
  }
)
