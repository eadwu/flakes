{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.506";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "01jh7f2rr2wbh5njnl5ff0n6sii39cs2ljpsl1s2m6xj43zxii84";
    };
  }
)
