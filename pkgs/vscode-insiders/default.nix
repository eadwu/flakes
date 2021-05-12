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
    version = "1620829711";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/37a12c9b0846167b2f68e9e1f276149d2d8b9b27/code-insider-x64-1620829711.tar.gz";
      sha256 = "19kpl547ga7x3p3gs46drcja94yxkphwc3zsh8y1rn0blxiiwjy8";
    };
  }
)
