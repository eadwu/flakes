{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.248";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "131lmfwdq0fbq1rv5j61xm24sf8m6qpqi0bbmf6l83ffx6zfa670";
    };
  }
)
