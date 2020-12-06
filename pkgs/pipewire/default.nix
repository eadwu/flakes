{ fetchFromGitLab, pipewire }:

pipewire.overrideAttrs (_:
  {
    version = "1607266564";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "6566f52a7ef09bda6a3ff684d608951851315544";
      sha256 = "020ilb8p43bkrp3fgypc7fh3wkifg142vp6w6xyvv0qppiiyjhn4";
    };
  })
