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
    version = "1711518585";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/246d700c4604eb5ebdbb561a1a86562bf9217a62/code-insider-x64-1711518585.tar.gz";
      sha256 = "17srd8h7h64p88kq8a4zm534k9c58bid5b3bcqkkr4brq2h0nvkq";
    };
  }
)
