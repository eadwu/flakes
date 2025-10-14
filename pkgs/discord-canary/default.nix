{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.787";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1v8hzj2gqfrfxafrcgc9xwy097xq3g4v2j3lw9cd52i2x1mm745n";
    };
  }
)
