{ fetchurl, discord-canary }:

discord-canary.overrideAttrs (_: rec {
  pname = "discord";
  version = "0.0.103";

  src = fetchurl {
    url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
    sha256 = "1d95q75ak4z6wkxlgcmkl7yk20gl7zf568b0xslz42hwx032fn4z";
  };
})
