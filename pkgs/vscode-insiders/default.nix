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
    version = "1665553528";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3e4e3518165e78181d2275e7745a8a59cea32e18/code-insider-x64-1665553528.tar.gz";
      sha256 = "1mwl1sw979pvccmg9780gxvpx4x3y7f90ssw6wa19rpnk7r9q6zl";
    };
  }
)
