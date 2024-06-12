{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.416";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1rp5048sj60cmcrbm98wdyqkn0dh1vlgp1xf7bd2jbmy7583rxf1";
    };
  }
)
