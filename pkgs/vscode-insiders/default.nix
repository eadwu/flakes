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
    version = "1670478514";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b92894493e6f971a3c71912d823e699d3a05d643/code-insider-x64-1670478514.tar.gz";
      sha256 = "11w9f1ff3ainsflrg4jafcilvsxkz7xnsq9100dz694irp84bqyl";
    };
  }
)
