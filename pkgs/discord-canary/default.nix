{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.375";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "08jnw1hx11ghlwqvjir9h8xcxsm73h9myzzaqid1zwa0cszivxrp";
    };
  }
)
