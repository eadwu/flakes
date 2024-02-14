{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.280";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1zlkqwd3i0jmxm3k2m7cndfnwhngjqb0qzrd5mdmg5g3bxjq9gk6";
    };
  }
)
