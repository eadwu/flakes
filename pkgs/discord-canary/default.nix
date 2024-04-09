{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.342";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0gyrdjzvlqif2za6vq0w8ij9wxi84ncpblxffrzbf0gr1k92pw3n";
    };
  }
)
