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
    version = "1663922992";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b9f7f85e90b4d51b38fcbf4232801ab04bd659cb/code-insider-x64-1663922992.tar.gz";
      sha256 = "0avl323d5lbdkfgjs5xwy7ic7k2x4vpkw3lff3j4s4jdzaq037ij";
    };
  }
)
