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
    version = "1615416100";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/11d5e82c80c6151e3f6d9da10429582b589c16ba/code-insider-x64-1615416100.tar.gz";
      sha256 = "15h000jabql12p1rg4nw87qxdwnjxw2rxh43qjqaqh8xjiks0x0b";
    };
  }
)
