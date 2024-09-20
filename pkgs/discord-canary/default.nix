{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.492";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0hwvk4kyr9v3bzxnajnwjz3zfvq8b5cv0xvky8k3rm96ls00sdrn";
    };
  }
)
