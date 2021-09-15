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
    version = "1631684238";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0c83ca1ced83259971d80890d93abbe19cbfc992/code-insider-x64-1631684238.tar.gz";
      sha256 = "0dl4g2rvbhslydda7p170kzj95bzr66dzln71zl21msykz5mcnpz";
    };
  }
)
