{ fetchFromGitLab, pipewire }:

(pipewire.override { hsphfpdSupport = true; }).overrideAttrs (_:
  {
    version = "1606987478";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "3005d3311309b38f2d0a6bd3b4a60bb98bbdae0c";
      sha256 = "0lng7wy4srbfqv6mal969rdhyc1g9kj00h5zf802qa3lsaskz1cc";
    };
  })
