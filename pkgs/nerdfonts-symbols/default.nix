{ lib, stdenv, nerdfonts }:

stdenv.mkDerivation {
  pname = "nerdfonts-symbol";
  inherit (nerdfonts) version src;

  dontBuild = true;

  installPhase = ''
    install -D -t $out/share/fonts/truetype "src/glyphs/Symbols-2048-em Nerd Font Complete.ttf"
  '';

  meta = with lib; {
    description = ''
      Developer targeted font with a high number of glyphs (icons)
    '';
    homepage = "https://github.com/ryanoasis/nerd-fonts";
    license = licenses.mit;
    maintainers = with maintainers; [];
  };
}
