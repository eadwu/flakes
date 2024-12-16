{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.547";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "00lavm6mxwj5w6dpyg9yl9aflzkanwr36a1cabqzwh55s2s3fxib";
    };
  }
)
