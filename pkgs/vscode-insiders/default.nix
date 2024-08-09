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
    version = "1723187861";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/4693ac3d4dce852b747d08d4bc54db5e35afe268/code-insider-x64-1723187861.tar.gz";
      sha256 = "19q1pizrhjk705rih9cqp65jihcwlf3yjq49g6s2yfavqy9vzb9i";
    };
  }
)
