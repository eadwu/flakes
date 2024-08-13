{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.469";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0mwx3ykbsdjnry7yssdikk9pvdj3hap7gixjpnnf3ayqzn1lf7nh";
    };
  }
)
