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
    version = "1634881435";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bcb9df5afa52c5b713f62e86dcac2c5050504b5f/code-insider-x64-1634881435.tar.gz";
      sha256 = "0r8g3hnafccdka4mghrzg65bfivs3i78z5dxl573zg8hpr6gsf7z";
    };
  }
)
