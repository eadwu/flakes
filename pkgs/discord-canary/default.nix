{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.531";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0cl2r2flixnhlls3z9p9ys4ylyj4ziqr0vz8np83n8xpv23jnsjg";
    };
  }
)
