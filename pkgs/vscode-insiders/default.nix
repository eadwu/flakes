{ fetchurl, vscode }:
let
  vscode-unwrapped = vscode.unwrapped or vscode;
in
(
  vscode-unwrapped.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1698863779";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/98417b150aeb47dd81dc58893789da4b4cb0e095/code-insider-x64-1698863779.tar.gz";
      sha256 = "154d30s0wxzm2hxvhw1c41mynlbsvg809h5g7m2qbpdirpl0h179";
    };
  }
)
