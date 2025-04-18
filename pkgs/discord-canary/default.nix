{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.646";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1d5gyr7gpyk6rrb01d7x0w7shvh0gqmyhscn17lg3adigz2k2qrh";
    };
  }
)
