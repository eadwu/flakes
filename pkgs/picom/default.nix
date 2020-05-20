{ picom, fetchFromGitHub }:

picom.overrideAttrs (
  oldAttrs: {
    version = "2020-04-24";

    src = fetchFromGitHub {
      owner = "yshui";
      repo = "picom";
      rev = "0b377537ec9c3f6faaa13878701d8d0b2ee62d0c";
      sha256 = "0z4iw2ypi3r4hrqxci9yi46acfpc7q35b0srlbrba4wznpfziagm";
      fetchSubmodules = true;
    };

    patches = (oldAttrs.patches or [ ])
      ++ [ ./dual_kawase.patch.xz ];
  }
)
