{ fetchFromGitLab, pipewire }:

pipewire.overrideAttrs (_:
  {
    version = "2020-11-30";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "95718792c4660d18d34af321c07cc29e6b7e0784";
      sha256 = "0p9rgcsb5rr36jk4pbbsrgq29i64b0hbfif34bcrdfbbnq1z1zzi";
    };
  })
