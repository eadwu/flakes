{ fetchFromGitLab, pipewire }:

pipewire.overrideAttrs (_:
  {
    version = "1607015466";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "73b13e8ad59a735493b4556c75af4188f369445c";
      sha256 = "0swpbm1zv20l75ka6m8g3am5ckaic1yavfjl0nyz5n6mwim3qxm9";
    };
  })
