{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.514";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0n68j0m56kmlsg2ldy1g1kj85ynp8gpfjwfgncwbzfjmrzmfv4lh";
    };
  }
)
