{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.236";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1hc9lrsxaifz3b99phlv34dgblh3mh1jnmgg0mmygg8b6v4x7f7q";
    };
  }
)
