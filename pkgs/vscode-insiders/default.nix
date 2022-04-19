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
    version = "1650346920";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e7c6ad74aff28965d0189ca1dd584f5e9829cf06/code-insider-x64-1650346920.tar.gz";
      sha256 = "0r5cm11vnal904z6pffd9ldyqb5kxqwyzbxlis2mpsd5vrrh51j6";
    };

    postPatch = "";
  }
)
