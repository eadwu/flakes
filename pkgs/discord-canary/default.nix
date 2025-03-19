{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.611";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1vxcwgrzr04iwrq4i55sj7sjbi8qx1c5ymgxb97pwr9srcwkffkl";
    };
  }
)
