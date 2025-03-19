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
    version = "1742402767";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/e2eba0acf61d58e502cdbb4b8a4cdec4cb1ab065/code-insider-x64-1742402767.tar.gz";
      sha256 = "1qr65i00070j6bjrzjpisk8n91b2735f9lfd5jxmys5sklmgs362";
    };
  }
)
