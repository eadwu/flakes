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
    version = "1675749026";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/25514d899f4bd877803defb213719f8af3d997d3/code-insider-x64-1675749026.tar.gz";
      sha256 = "1qbp21dm5c1xmbfyrbamnngzwnk0w45ysr53h623hham6gi1dikj";
    };
  }
)
