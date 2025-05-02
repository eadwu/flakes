{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.668";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0qblkr91y5v0gb8wfzbbaasqfcwfs6iqv9pf9i2gq2rr921kyxnn";
    };
  }
)
