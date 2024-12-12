{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.541";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1zmnv1n1qqx225nr59dkg1h3jcs7kw5ji74w0nz4jmmp5pcgb55s";
    };
  }
)
