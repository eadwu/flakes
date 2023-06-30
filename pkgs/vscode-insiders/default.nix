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
    version = "1688104533";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7406a9bdfca18f82a3977ba5eac908d41df7ccac/code-insider-x64-1688104533.tar.gz";
      sha256 = "0w1cc5lxz2yd01g680b6y5bqkvwihd281igxlyrqg6cq7c21q99n";
    };
  }
)
