{ fetchFromGitLab, pipewire }:

pipewire.overrideAttrs (_:
  {
    version = "1607247460";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "136fc028a5eb7d2b06ec1d36e1780fa7f96f383c";
      sha256 = "1i5q4bshdj68mslmgdy4qs995nhwsfcw56hqx2524rgagi5ssb96";
    };
  })
