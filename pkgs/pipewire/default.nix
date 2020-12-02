{ fetchFromGitLab, pipewire }:

(pipewire.override { hsphfpdSupport = true; }).overrideAttrs (_:
  {
    version = "2020-12-02";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "4c486c7ae322fbcc903884a30da72552a1b57f07";
      sha256 = "1dqb628b1k246pw3hc1bqqgjxi31a55paz71llfw0dm3xsw4c55x";
    };
  })
