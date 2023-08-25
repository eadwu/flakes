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
    version = "1692941609";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/083fca132543aa91a7e1de2dc23857d70ea56dd3/code-insider-x64-1692941609.tar.gz";
      sha256 = "01q63gpq75c1zn2i16sk63kfjrlpvxadpxfkcwm8rzhml0r3bfy9";
    };
  }
)
