{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.620";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "14vxvbgjr71dcy5gr57wfp13wj3khqiw6ccqq4dx6v1yw6ricd24";
    };
  }
)
