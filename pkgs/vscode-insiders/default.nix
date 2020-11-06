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
    version = "1604642143";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/24b28f57be22fe3029cb17a1dd72d8d9c2d6468b/code-insider-x64-1604642143.tar.gz";
      sha256 = "1gic32vaid5744cxkxyr36k30nf24zzmiz8a2y7dpz0j0yb09sbn";
    };
  }
)
