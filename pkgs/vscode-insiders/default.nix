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
    version = "1760505442";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/f030344cf19e76e6b47d2d8ab003780a7fdb8171/code-insider-x64-1760505442.tar.gz";
      sha256 = "0h9s0kwv2ax32qvxyf26ix73jxziyhh51pzjnpxzagf5f6p54k2s";
    };
  }
)
