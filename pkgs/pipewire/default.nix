{ fetchFromGitLab, pipewire }:

pipewire.overrideAttrs (_:
  {
    version = "2020-11-29";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "a1259a75be50d452c01e933a9c4b969aa7e4cde5";
      sha256 = "07iiyh5lzgncr4p2wqsmz23ahxzwdbbbqi2k9y7h46prwbbgxbl8";
    };
  })
