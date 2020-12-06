{ fetchFromGitLab, pipewire }:

pipewire.overrideAttrs (_:
  {
    version = "1607243532";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "316a96d5018a20af8f4c04cdb927ad5707d42f1a";
      sha256 = "03n5lgbk60h57pf6vi8f5n7mpiin2z25drzl28s6p8ck3ij11vgb";
    };
  })
