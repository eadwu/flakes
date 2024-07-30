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
    version = "1722346675";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/52b2f67e96b4e757e8ff8e1e009dfffd70da91f5/code-insider-x64-1722346675.tar.gz";
      sha256 = "0pkl65cigjjms78vyfdpffad30s96y2d43hjq0jskdn1ix3vj14y";
    };
  }
)
