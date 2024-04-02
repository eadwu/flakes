{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.328";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0ipfgswqm8lmwmzdlhyq3f5j2aa9p9x5sizwwxwlm7l2r16v6v0v";
    };
  }
)
