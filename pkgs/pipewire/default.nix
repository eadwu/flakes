{ fetchFromGitLab, pipewire }:

pipewire.overrideAttrs (_:
  {
    version = "1607080567";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "ecc975d089a16c7dd23bbd9afb71e646a690aff8";
      sha256 = "0zw37zd1s25rkjw27s5vaqfwghrwmf3c50z0pm767fm4g12m9qrl";
    };
  })
