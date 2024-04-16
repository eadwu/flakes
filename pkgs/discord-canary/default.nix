{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.353";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "158zvhzzbv0fa94i5a9mdfvvpq32lpy330ndmj09gs1kgdr3fcxs";
    };
  }
)
