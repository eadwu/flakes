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
    version = "1623235983";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b4c1bd0a9b03c749ea011b06c6d2676c8091a70c/code-insider-x64-1623235983.tar.gz";
      sha256 = "0h91zni8a52jxni4z7azj7j3z2d10pnilibarcy4dv8hbkvzmip2";
    };
  }
)
