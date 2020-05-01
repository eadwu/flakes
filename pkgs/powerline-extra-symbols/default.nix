{ lib
, stdenv
, fetchFromGitHub
}:

stdenv.mkDerivation {
  pname = "powerline-extra-symbols";
  version = "2019-08-17";

  src = fetchFromGitHub {
    owner = "ryanoasis";
    repo = "powerline-extra-symbols";
    rev = "ae05de7c51f6609479f4f1a4a0f6f65631731c1b";
    sha256 = "07gd9axn0sr22gq97vq1qrjyjq5kayd03jd60h2gf41p9wlm0hq6";
  };

  dontBuild = true;

  installPhase = ''
    install -D -t $out/share/fonts/opentype PowerlineExtraSymbols.otf
  '';

  meta = with lib; {
    description = ''
      Extra glyphs for your powerline separators
    '';
    homepage = "https://github.com/ryanoasis/powerline-extra-symbols";
    license = licenses.mit;
    maintainers = with maintainers; [ ];
  };
}
