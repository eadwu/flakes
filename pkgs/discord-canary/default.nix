{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.664";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "138jlbb3f1iz1hkhb80iavh8inqzx3i9fxcq36wbdg5fa9dhkjxm";
    };
  }
)
