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
    version = "1710136068";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/12fc36731bd0424dfc53e9f456ac793c1eb1d6d0/code-insider-x64-1710136068.tar.gz";
      sha256 = "1747iin8py284r82q46dczayjnrxgsplfsaw9412a302s4237yi0";
    };
  }
)
