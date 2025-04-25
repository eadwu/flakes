{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.660";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0i6zrwzhz0ynqy74jdhlskkjzz8m5q1209ljsbnnjcp3n0b9d9gn";
    };
  }
)
