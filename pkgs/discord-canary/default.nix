{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.496";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "18kzdy9syc967pkfdnvs51wq0f35p9dqzfmk6yvsz86z1kjixrdm";
    };
  }
)
