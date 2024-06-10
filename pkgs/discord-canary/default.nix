{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.411";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1cq5rr531l7bsgkac9zx3xb6xxk9jv5pax68mrvkn8xnyy8adx6h";
    };
  }
)
