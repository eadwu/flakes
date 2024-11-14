{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.519";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "16qhy0j5dbcfbzwm9l5hvxfvl72hn7ixbs6vqpi90p99k0d9p3bl";
    };
  }
)
