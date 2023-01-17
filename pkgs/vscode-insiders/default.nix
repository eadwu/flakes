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
    version = "1673934430";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/1379f0375440df946adc62f7afb8375dd45d5adf/code-insider-x64-1673934430.tar.gz";
      sha256 = "1m7gzmsqz6v2l6j5azmca23bq6xkd5baiy0vhgmaa83ywcg1dwsz";
    };
  }
)
