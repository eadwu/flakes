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
    version = "1711041916";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b40321263dbe14515f436b9b34ab5c7d8d5526ae/code-insider-x64-1711041916.tar.gz";
      sha256 = "1w04snv7jyajyz5c26138nkms1plcywwq6d48m22cliza8934h5f";
    };
  }
)
