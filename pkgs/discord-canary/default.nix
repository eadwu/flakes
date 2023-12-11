{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.216";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0lpvfp4c7jdr2wn0acfc5qn5kk08i7rscgfjynyrpzvrch4v9jsi";
    };
  }
)
