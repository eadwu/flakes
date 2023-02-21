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
    version = "1676958447";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/5454665328aa30aeb989abfc195e7a7aacd94edf/code-insider-x64-1676958447.tar.gz";
      sha256 = "0cjyv5mf98lzgx3g2am6kfrri9xfs2ffizq4x1jdgl0yffmz274r";
    };
  }
)
