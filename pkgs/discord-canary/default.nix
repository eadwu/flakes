{ fetchurl, discord-canary }:

discord-canary.overrideAttrs (
  _: rec {
    pname = "discord";
    version = "0.0.104";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "17np1hqqygjlbmlln0d1ba2qlbjykwj156w5dw7g4lg77kfxicfk";
    };
  }
)
