{ fetchFromGitLab, pipewire }:

(pipewire.override { hsphfpdSupport = true; }).overrideAttrs (_:
  {
    version = "1606924882";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "3363544d0597df0c71782d7b2a1c1872368c19bc";
      sha256 = "0mcvd5r88hy2g7d26jqascwxrraac0c860im863jl1gl5kgaymyf";
    };
  })
