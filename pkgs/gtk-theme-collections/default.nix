{ stdenv, fetchFromGitHub }:
{ src, version }:

stdenv.mkDerivation rec {
  pname = "gtk-theme-collections";
  inherit src version;

  dontBuild = true;

  installPhase = ''
    mkdir -p $out/share/themes
    find . -mindepth 1 -maxdepth 1 -type d -exec cp -r "{}" $out/share/themes \;
  '';
}
