{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.463";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0r061jxkq56cbw8mlxyc8jlfmbfay9hpicdglw5lrs5r2q2g2iy3";
    };
  }
)
