{ fetchurl
, discord-canary
}:

discord-canary.overrideAttrs (
  oldAttrs: rec {
    pname = "discord";
    version = "0.0.389";

    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "0gzgwm6if2k2n4nlkjahzq6kfmgs7jnxabc8nrz7nyli9s3yn32h";
    };
  }
)
