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
    version = "1678773051";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bbe8e872dc7c8899eb80bc4b650a6f090f4bc952/code-insider-x64-1678773051.tar.gz";
      sha256 = "1p6b5hi57xwf6nzq33gcn6q0cmf7h0v07lyzlk8bqd3dlq9ixpqi";
    };
  }
)
