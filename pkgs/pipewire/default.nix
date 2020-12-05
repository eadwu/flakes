{ fetchFromGitLab, pipewire }:

pipewire.overrideAttrs (_:
  {
    version = "1607195785";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "7996b440368e95d3b911f59a1cfa877f69b2a6bf";
      sha256 = "0g69dr7lrq4ynx32glgw6iiz3qra61vs097if61i19nk1rqy94ch";
    };
  })
