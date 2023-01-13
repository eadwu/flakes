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
    version = "1673597586";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/243854703b7fa371abb752ec0df7817a615a308b/code-insider-x64-1673597586.tar.gz";
      sha256 = "1zqf6i5w18yv6lvl8lyvbpmdqivggz8b1va6s13vclndndd6gygl";
    };
  }
)
