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
    version = "1729792094";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/a030b0cd0b81acb028d2bca640d085e5f0e3ad8d/code-insider-x64-1729792094.tar.gz";
      sha256 = "1cc5a7lkkkf9brbl7si50vb2pig1yb3q8ns5yvb4is4rclmhip78";
    };
  }
)
