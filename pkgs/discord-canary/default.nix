{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.221";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1g917459r6dxf8j0g5a3x5a5r9cn23czw6n3il8gb8qb6gm58ayi";
    };
  }
)
