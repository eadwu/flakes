{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.526";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "04h1lpd03wrx7djbgs5xc40ybbrnniv2phd2nv7jfadggq1jkvdw";
    };
  }
)
