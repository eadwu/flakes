{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.493";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "08gp2xk40inpkrg6ql33sh57hg6xhjr011lnrg4wcbazxlfzzl3h";
    };
  }
)
