{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.533";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1pbrddxg2hb2hvnjpjwxzi132fjagmiq6d8vmdwdpwqzpk45z7q1";
    };
  }
)
