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
    version = "1702454855";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/f87fb292c3af22e51a7f5c628496cd8d6fd9ecd5/code-insider-x64-1702454855.tar.gz";
      sha256 = "1sjfmj5b2zh6h46iw4yplkljzvya20jcyf8s42jqprbqkks1p8gm";
    };
  }
)
