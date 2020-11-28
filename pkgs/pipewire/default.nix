{ fetchFromGitLab, pipewire }:

pipewire.overrideAttrs (_:
  {
    version = "2020-11-28";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "62cdec84481d74c4d54bbcf3717f09e5edaf455c";
      sha256 = "1d6yzk3q9i0aqcq528sn93d4q97kaarxzmqnh37karwcdwfqkq10";
    };
  })
