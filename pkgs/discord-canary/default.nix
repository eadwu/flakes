{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.304";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "10nih0r7mlizbqsqc61jbf5hm2dhzdhivzrfilnxx7cybq8yql5i";
    };
  }
)
