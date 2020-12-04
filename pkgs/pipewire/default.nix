{ fetchFromGitLab, pipewire }:

pipewire.overrideAttrs (_:
  {
    version = "1607070965";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "af8bb55762951817eeae4659cd9ccdcd4b66d1c2";
      sha256 = "0zadggxdb3xwl88ybj17d14242hp0pajllmaw8n1v38h6marry2x";
    };
  })
