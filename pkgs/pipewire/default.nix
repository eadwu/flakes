{ fetchFromGitLab, pipewire }:

(pipewire.override { hsphfpdSupport = true; }).overrideAttrs (_:
  {
    version = "1606990153";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "908e3f3d1f8b258adf7e2dc053a4b33e7a1371fe";
      sha256 = "0fhvxsc2savpjyvzs3qid6dxpmjdr67pzgh4s8kv2hpashk9n131";
    };
  })
