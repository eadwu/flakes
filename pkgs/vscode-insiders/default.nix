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
    version = "1611815041";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f73c011ae3f8df0aa4ba144cdee221e2e8690373/code-insider-x64-1611815041.tar.gz";
      sha256 = "12nhh6np16j8friqzzr2z561jh5hn4dxmg6b7l3sqn1zjk77mvvm";
    };
  }
)
