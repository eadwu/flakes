{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.487";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "02s4rxjjz6pd94gwgwjdf6rjkw7133ivg9a518kkr62vwirgjjvl";
    };
  }
)
