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
    version = "1631124645";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/df115e761ae11cf87ca569ca1824b7257099553a/code-insider-x64-1631124645.tar.gz";
      sha256 = "1ivfpcz11dcwmvvfj9fdyrfv1k0inv59r37h4bqm83wqw3aj4ab6";
    };
  }
)
