{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.579";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1jf06qpp9slq3kvdwsd1p86bb2z6kv7ph110hnkyzvj1rh1pb5ig";
    };
  }
)
