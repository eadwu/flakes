{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.172";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1ybnz777idjvbqi4ivhdf5lw3fy0p8ikqwxcrw0i6h88br5i5gpz";
    };
  }
)
