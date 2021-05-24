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
    version = "1621834322";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5319757634f77a050b49c10162939bfe60970c29/code-insider-x64-1621834322.tar.gz";
      sha256 = "1bqyg0996aqbih6f93qqphgfs8lg334hlr2byydz1x7fgyvjsnch";
    };
  }
)
