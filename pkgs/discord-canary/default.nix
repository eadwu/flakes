{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.655";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1hiv4iy0xnkknbh59706rbpa0bx6c2x3h9z9fhyfp1f6va6i3vgq";
    };
  }
)
