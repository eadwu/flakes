{ fetchFromGitLab, pipewire }:

pipewire.overrideAttrs (_:
  {
    version = "1607092871";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "c6663b6a18710de047d62982ea0436b562b88375";
      sha256 = "1ym6fwsi4xhvfclywrf44ks1j8cxsai3i7nbg93rg4cfv26kl887";
    };
  })
