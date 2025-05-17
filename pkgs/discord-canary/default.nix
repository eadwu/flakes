{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.678";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "07rwx2p9md7fkbsr62k8kqv655wbdnhgawf7p7kgcrbi3swm7sk7";
    };
  }
)
