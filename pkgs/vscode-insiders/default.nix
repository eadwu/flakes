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
    version = "1733874585";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/138f619c86f1199955d53b4166bef66ef252935c/code-insider-x64-1733874585.tar.gz";
      sha256 = "0sjs513f5rwjiqmaf3qhfvmsgfh8rgxqm8hcsi2n2r8kz1g6xypn";
    };
  }
)
