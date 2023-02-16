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
    version = "1676526556";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/dc619de8d9efdabd781fc5658d0051813c347055/code-insider-x64-1676526556.tar.gz";
      sha256 = "1232a21y0d94kq17kvl1ksg8gq1rxv81x27c79p6a2xiw9cx70js";
    };
  }
)
