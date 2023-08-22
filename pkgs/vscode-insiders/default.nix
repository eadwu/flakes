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
    version = "1692729891";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/eccdef295e18aed53b9c9bad4f14517d086b9fd8/code-insider-x64-1692729891.tar.gz";
      sha256 = "0h3nr2cbcd1hkhqpwyaylsn8qbaa0l1jdrccnswrsp2q7wr40kwd";
    };
  }
)
