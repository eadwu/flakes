{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.394";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1ap1k757jmi3z7ksvgnqwxqby7ixldfpf5vmxs3ifbfkdp0k63wx";
    };
  }
)
