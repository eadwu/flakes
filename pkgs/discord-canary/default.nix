{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.433";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0iwq2sc8npl4rz57f758d9cwjmlnnr31nf0rxi6hjfkl14g1i3r1";
    };
  }
)
