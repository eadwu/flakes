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
    version = "1612368382";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8490d3dde47c57ba65ec40dd192d014fd2113496/code-insider-x64-1612368382.tar.gz";
      sha256 = "1ia9srbfyzkssamj0s18mkx6zymxxvgvx8yf1j9ipic0p3nww3kl";
    };
  }
)
