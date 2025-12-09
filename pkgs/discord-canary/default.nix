{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.823";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0qdpjmdk4gd6cmk44451fc1vk3g5q0s6nn8sdw6xj1653df8i8wa";
    };
  }
)
