{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.518";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1qhz0wqx9k782qp68ax5a0vigvr0wnjz5jqlc8bb5sjzbr9rhg6a";
    };
  }
)
