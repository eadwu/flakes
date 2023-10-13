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
    version = "1697175229";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4678919d52909efc7c4ab958a2e5c8f45d50ffc3/code-insider-x64-1697175229.tar.gz";
      sha256 = "0c8ng7nxxn43h7ajayj94iw6zp3q9w53785k3qnzjmxclc4d9ijr";
    };
  }
)
