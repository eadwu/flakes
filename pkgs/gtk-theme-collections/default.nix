{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  pname = "gtk-theme-collections";
  version = "";

  src = fetchFromGitHub {
    owner = "addy-dclxvi";
    repo = "gtk-theme-collections";
    rev = "";
    sha256 = "0x8gbrf3qx3rfwgy23l1rllbn653zr2ncc6bdn7pinqd5i0hqawb";
  };

  dontBuild = true;

  installPhase = ''
    mkdir -p $out/share/themes
    find . -mindepth 1 -maxdepth 1 -type d -exec cp -r "{}" $out/share/themes \;
  '';
}
