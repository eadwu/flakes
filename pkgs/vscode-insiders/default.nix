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
    version = "1615181352";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5d80c30e5b6ce8b2f5336ed55ad043490b0b818f/code-insider-x64-1615181352.tar.gz";
      sha256 = "1ypg99ng8fdibrf5i9gdxq7wn37i3l3i82rhbk2xqhw7plkrkhbz";
    };
  }
)
