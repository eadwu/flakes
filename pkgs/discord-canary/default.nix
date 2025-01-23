{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.574";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0yr321cl80b7p0a315gd0dsdf3kdr6p6ivd3gfqxjs1pnnblg5x5";
    };
  }
)
