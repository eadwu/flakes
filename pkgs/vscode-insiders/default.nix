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
    version = "1675403453";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/c4a609f94329b17d91cd13a4fd113d1abfe5ec1f/code-insider-x64-1675403453.tar.gz";
      sha256 = "1ynax9bz3qrjn50d9m2gyw2whgjrq8hri464jmg8v2vba27rs3wc";
    };
  }
)
