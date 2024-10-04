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
    version = "1728048601";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/af6645a661a5402af586154207ee2ea3742f3bea/code-insider-x64-1728048601.tar.gz";
      sha256 = "0nj0c1ckbgz40w1hsj1jw12mdis6hpa1a22g313hf3hxsmxwh6vy";
    };
  }
)
