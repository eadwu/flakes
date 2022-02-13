{ fetchFromGitLab, wireplumber }:
{ src, version }:

wireplumber.overrideAttrs (_:
  {
    inherit src version;
  })
