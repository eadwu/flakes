{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.340";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "11lwh6ah8n6anwfmazs3hicaf0cvpzid7c5wkl08l6dikpdc54ax";
    };
  }
)
