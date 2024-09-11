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
    version = "1726033494";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/6e9d8a281003211220a6732ec538a28c483ff78b/code-insider-x64-1726033494.tar.gz";
      sha256 = "190n5ziqjlzdchj7ya4wa44gs1q7j7xlycx10i5c443i7d537fy1";
    };
  }
)
