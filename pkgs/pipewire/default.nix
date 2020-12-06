{ fetchFromGitLab, pipewire }:
{ src, version }:

pipewire.overrideAttrs (_:
  {
    inherit src version;
  })
