{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.436";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "06qq1g7q0m0f51zzy2iwl8slb8y0ll8g10h9hyii70s7ybdq6xq4";
    };
  }
)
