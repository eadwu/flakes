{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.395";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1cg4znpy49mfgqw3hnwrjdy9zy4l5nv20kzg24bvc0fbj33ni8zl";
    };
  }
)
