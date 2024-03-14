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
    version = "1710395352";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/99a19815253d91900be5ec1016e0ecc7cc9a6950/code-insider-x64-1710395352.tar.gz";
      sha256 = "0bhzyz66b3vz3dc8fjfjsy71fwgl9whm2i49ygvwddzcgvm5fn88";
    };
  }
)
