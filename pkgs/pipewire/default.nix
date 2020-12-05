{ fetchFromGitLab, pipewire }:

pipewire.overrideAttrs (_:
  {
    version = "1607152681";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "4797018e4f49bf45247a516fe54dccbdee22d1e4";
      sha256 = "0gqkqiy2n63ma429zbwc3g7pr05nsbrqarv3s6zh8hlnsd9v2gbw";
    };
  })
