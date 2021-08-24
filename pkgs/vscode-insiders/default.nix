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
    version = "1629829880";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5f19eee5dc9588ca96192f89587b5878b7d7180d/code-insider-x64-1629829880.tar.gz";
      sha256 = "11dxzaniiaixnczc9q6fyk36yhdpqby1vbk4rr3gcpmmq7ci9y6b";
    };
  }
)
