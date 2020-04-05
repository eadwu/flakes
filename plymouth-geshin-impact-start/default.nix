{ stdenv, fetchgit }:

stdenv.mkDerivation {
  pname = "geshin-impact-start";
  version = "2020-04-02";

  src = fetchgit {
    url = "https://git.sr.ht/~eadwu/plymouth-themes";
    rev = "8584d1a4bd22cd2e697425ba695077a11d80dbf2";
    sha256 = "0vlwh2sl8iwrqb66lkqyjf9hcgaf9p3i8rgbx2sg7i6rdvv83mzq";
  };

  patchPhase = ''
    substituteInPlace geshin-impact-start/geshin-impact-start.plymouth \
      --subst-var-by theme_dir $out/share/plymouth/themes
  '';

  dontBuild = true;

  installPhase = ''
    mkdir -p $out/share/plymouth/themes/geshin-impact-start
    cp -r --target-directory=$out/share/plymouth/themes/geshin-impact-start \
      geshin-impact-start/*
  '';
}
