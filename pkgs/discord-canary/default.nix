{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.245";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "14n6f5d3i2nhs89v7ps5dz2y3jbl5cjqf2y3lmpsjyai45i44cnl";
    };
  }
)
