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
    version = "1643670168";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/61b42a3bf8b6acd6e4ad0316bce60447e48632e0/code-insider-x64-1643670168.tar.gz";
      sha256 = "1ziwwwigicr737hqmzrldj57x2v24swxwww6b517r991jxa0jkq4";
    };

    postPatch = "";
  }
)
