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
    version = "1615526928";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/06b54543d660353a04cdab6554d1f27266a537fd/code-insider-x64-1615526928.tar.gz";
      sha256 = "1h5d3mw5kvq8v62jfa7id3qshsw64342l6n11069vwn8hspmws2j";
    };
  }
)
