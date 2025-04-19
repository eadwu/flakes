{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.649";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "176lalxiw0ykrv010l1gbzf6p4n1cl57nr1cx2a3wj17g49jfz0m";
    };
  }
)
