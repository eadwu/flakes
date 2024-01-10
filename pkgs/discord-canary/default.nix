{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.242";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0k0jmxdlsxz8g8dixsy7mssbbh5qliyfirp94y80xxiv1jzsaz1s";
    };
  }
)
