{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.369";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "02z5zgxly8y2r8rilbc00dbjx0an3pmxc4dnwvmnhxkg5bkyj5rs";
    };
  }
)
