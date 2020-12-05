{ fetchFromGitLab, pipewire }:

pipewire.overrideAttrs (_:
  {
    version = "1607153414";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "c3c1a1184c0cb051b39c720525d13dc1cd484b1d";
      sha256 = "1xhqzwcz1rxxg0ig6cmynwyzwb04726srx972mgrhbg4gr3bwz4c";
    };
  })
