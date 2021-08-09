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
    version = "1628487280";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1ee61f368ee0570feeb220605578a8768d99e762/code-insider-x64-1628487280.tar.gz";
      sha256 = "1yhy4mrsq4a41dvn7p86296rzpfwrm1ir49h7w680hp3s81ywxay";
    };
  }
)
