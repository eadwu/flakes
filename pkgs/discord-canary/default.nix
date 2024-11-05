{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.512";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0y6p0dhyk32h38z3mhk4bj9zvxwywjbc2z2kzs2r5axnkacpn2b0";
    };
  }
)
