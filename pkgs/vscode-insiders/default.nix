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
    version = "1719510775";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/973dc3065b154f31e6ca21b5fe80f0b23cf858a6/code-insider-x64-1719510775.tar.gz";
      sha256 = "1xrz9z43wfl3vzlzy0k0z13rpiclckb9h7y0zf05ijkl5vjf6wxs";
    };
  }
)
