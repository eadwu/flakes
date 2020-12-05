{ fetchFromGitLab, pipewire }:

pipewire.overrideAttrs (_:
  {
    version = "1607192607";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "0a8a8547211dca649c5e61a1a08762c8735593e0";
      sha256 = "186is0fgc7xdk2j7zg4msgjhvdd2i5740dv6gw9gvfh0h8m5wha9";
    };
  })
