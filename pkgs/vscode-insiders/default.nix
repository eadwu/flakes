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
    version = "1652334424";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/624bbc4fb966bfa34e9486e320a64a138ac337fd/code-insider-x64-1652334424.tar.gz";
      sha256 = "1z9b1bp3yxpnzlpbjicjaicynsnnn26m1ri4skz9pl9a2nkl0cyn";
    };

    postPatch = "";
  }
)
