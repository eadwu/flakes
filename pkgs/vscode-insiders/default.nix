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
    version = "1709317072";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/bb171489789c9a49e985a4a2c8694138d70d42c1/code-insider-x64-1709317072.tar.gz";
      sha256 = "0lj6h05dbysckj8pv18nb3vsh4v6s4gk82ym08spnlk3xz07m61v";
    };
  }
)
