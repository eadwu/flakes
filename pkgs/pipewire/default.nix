{ fetchFromGitLab, pipewire }:

pipewire.overrideAttrs (_:
  {
    version = "1607198216";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "6d494c120ff8e0216abbfce4bed864c7080d3c6e";
      sha256 = "1p7sk06ax9f94m21xhi9y8kq80yjsf28gdxi90wf32l9xah2n19b";
    };
  })
