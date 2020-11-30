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
    version = "1606715750";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f47aae014cf8567f648e68369d66b4106ae89f08/code-insider-x64-1606715750.tar.gz";
      sha256 = "127cmr3jv30xmwjafwww9mn9384h64cwl72j6kpiic22lxkwc36c";
    };
  }
)
