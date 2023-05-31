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
    version = "1685503868";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/fa8eefda18bf099d82b58453f8fe5d3010196fa0/code-insider-x64-1685503868.tar.gz";
      sha256 = "0h02dhsy2sb7dj8yip7bc2nyw4j0scakqb1ymcq4bqmz0501psjf";
    };
  }
)
