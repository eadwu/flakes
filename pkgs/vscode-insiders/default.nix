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
    version = "1747027322";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/5d3e84d3aaaea9e132bad476f1be5a4846289b75/code-insider-x64-1747027322.tar.gz";
      sha256 = "09niibfi8qppvbqqd0j80gvsr4njsnphrq5nlfr0dh0xazj33lzf";
    };
  }
)
