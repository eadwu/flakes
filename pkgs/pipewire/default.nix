{ fetchFromGitLab, pipewire }:

(pipewire.override { hsphfpdSupport = true; }).overrideAttrs (_:
  {
    version = "1606920176";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "3c2ab98a2a0ab48f087c375ec9ff5a69b0c64dcf";
      sha256 = "187vwfg4bi9rwi6ngi1i0jaslpl4k7w8ksc0r1m6px0zccvpzliw";
    };
  })
