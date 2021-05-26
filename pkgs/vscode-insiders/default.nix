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
    version = "1622007154";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a18ea9c9ec25c59e599ba3c2eb668315546dd269/code-insider-x64-1622007154.tar.gz";
      sha256 = "0hyanmvpclvv0ngaqg553y5dx59867qzjkkm9jl68y6zh24qgrb4";
    };
  }
)
