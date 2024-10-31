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
    version = "1730334532";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ea6e8e22fcc0f6c4511fc7639a9f4a0d53209b5d/code-insider-x64-1730334532.tar.gz";
      sha256 = "1y8q0jf8i3wk4qqbbx0amplyzj11vldxnpw89v84918yfshcsxd0";
    };
  }
)
