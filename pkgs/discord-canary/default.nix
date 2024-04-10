{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.346";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1d9kq5zn1fd5ljhw0vsmi5cm5jf4f9dgjaps82c4srkdgaimal7w";
    };
  }
)
