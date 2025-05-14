{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.675";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0rjzgrmakzfvg6xhsvyyn3rhan1p7syi3r8sjaxrhw0vc9pva55k";
    };
  }
)
