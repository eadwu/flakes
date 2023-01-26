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
    version = "1674712062";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/07d6f5b35fac559504dec65e3073d796b2d25a55/code-insider-x64-1674712062.tar.gz";
      sha256 = "1bxi337wq6xvabiy9xyv5x3lbyjnx6hbvrvvx1nsm4mhxp6f6d7i";
    };
  }
)
