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
    version = "1697693667";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c42f8961f9ba803175ccbb8260e8d70d561f8bee/code-insider-x64-1697693667.tar.gz";
      sha256 = "0ql1m9yx0xlrbb44h2rpkn2c0pfckg3rafxv102m3ln5nzwcrs54";
    };
  }
)
