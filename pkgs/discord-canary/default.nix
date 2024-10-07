{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.500";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1kk1dh2jdcjzfnkqi4x3zj4vqhn5sqwf7i6dahjqf4415dxvwm0i";
    };
  }
)
