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
    version = "1699594518";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/64783a4eb9e896feadb2cbbd767b7ba8013980ee/code-insider-x64-1699594518.tar.gz";
      sha256 = "0p60iw42x01rpb93d358iqqv4mjy206kmcg0zxgss5l4425dgsg9";
    };
  }
)
