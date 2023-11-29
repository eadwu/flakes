{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.196";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0mxdggsd2r3g1c07i59j0pvj43z1g7zpvrjs7rklxfzswqz5bcpc";
    };
  }
)
