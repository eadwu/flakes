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
    version = "1675266544";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/e2816fe719a4026ffa1ee0189dc89bdfdbafb164/code-insider-x64-1675266544.tar.gz";
      sha256 = "02x4pnbhzqwhb33l9id96gk32jx4apkmkh6ncknlykw6fkaiilf8";
    };
  }
)
