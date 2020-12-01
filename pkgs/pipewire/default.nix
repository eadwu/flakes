{ fetchFromGitLab, pipewire }:

(pipewire.override { hsphfpdSupport = true; }).overrideAttrs (_:
  {
    version = "2020-12-01";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "23bcc2124096e9ba1594a0b7ce0937d1780db3db";
      sha256 = "0vjl0l15jk4kv3glp39g7nwsd69f24fww09dgi2fsl4vhc7ssxpr";
    };
  })
