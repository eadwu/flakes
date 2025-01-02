{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.551";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0lwf5844dy6g72zm3qhgbwr4z9rr5jfx9x13fgpxvmx0mmi52wva";
    };
  }
)
