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
    version = "1695113791";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7c7f7eee860e299499a3bd2915ad716f09f2d6a6/code-insider-x64-1695113791.tar.gz";
      sha256 = "1553n0gizb9hhkyyga9mgglns6k7xr85h90gk0v6bzp9psnw28fv";
    };
  }
)
