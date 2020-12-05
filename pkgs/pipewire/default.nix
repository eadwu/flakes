{ fetchFromGitLab, pipewire }:

pipewire.overrideAttrs (_:
  {
    version = "1607171402";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "cfe43cbea746aa09de979be2972350071a4921c9";
      sha256 = "1nk06h19hqa57jxzinxv5qakhwvikadh8qg1l6a27595cinlgj69";
    };
  })
