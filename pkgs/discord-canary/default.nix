{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.623";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "19a5w1v2qw7y1b5gj9v7q4qxhryfkpxa5ai4ahqwj0dgxf89hcr8";
    };
  }
)
