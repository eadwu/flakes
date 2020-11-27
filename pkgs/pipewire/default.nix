{ fetchFromGitLab, pipewire }:

pipewire.overrideAttrs (_:
  {
    version = "2020-11-27";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "77791bd427a20eeed601e02a8a197eaccdbf9c7f";
      sha256 = "0vc4xdw6dmqfxndljqqxn5dwm7ql7v2rbhbnrmii26bx7kgby18m";
    };
  })
