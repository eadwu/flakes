{ fetchFromGitLab, pipewire }:

pipewire.overrideAttrs (_:
  {
    version = "1607256185";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "d2ff3412639c0c01471a1baaeaee8079295724f8";
      sha256 = "0k53xiiwwinmxnfjxipmw2cd2rv7w1c78mbqi8vpgk48zb91hffg";
    };
  })
