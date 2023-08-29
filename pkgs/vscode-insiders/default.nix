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
    version = "1693287173";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ebd67244fb2da33ab078bb2baa96106fda29f336/code-insider-x64-1693287173.tar.gz";
      sha256 = "1134xjr2bigshb9v66g2h23v6vfh8f1fbg06r0mllkdf89askc5y";
    };
  }
)
