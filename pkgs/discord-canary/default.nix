{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.825";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "028s5lsnlaf4mjbbwm7yjr5vkc4fq3bjrcfihifz6g4wwnffhvvy";
    };
  }
)
