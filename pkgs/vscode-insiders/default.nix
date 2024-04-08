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
    version = "1712555430";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ed6c6d3f28fa4cb66f6d73918365e41fb81db14c/code-insider-x64-1712555430.tar.gz";
      sha256 = "1iw6w52l5y7vknsfr7cqji08ysw4iz14jzsra6m7h7nbc6vnj9rw";
    };
  }
)
