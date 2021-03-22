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
    version = "1616400413";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/469e4f6e2755b220dae3eccb04d1ddc587b84a5a/code-insider-x64-1616400413.tar.gz";
      sha256 = "146vpapm03r97wiq1683a69khs2ywv30fr5jmkvh7f98nzdjy619";
    };
  }
)
