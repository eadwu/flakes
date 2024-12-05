{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.532";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "09di9nzixaggkh1mj5absiwib4lyjb4k6ds8wz2pmm4g1cvag5j4";
    };
  }
)
