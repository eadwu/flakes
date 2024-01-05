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
    version = "1704471669";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/1cfc62d46e6b9dd217cd485d7d4591136f421d70/code-insider-x64-1704471669.tar.gz";
      sha256 = "1gw94vi751g18xv2py9ykfadf1pz3j29qk52w07mz72a644q0mfk";
    };
  }
)
