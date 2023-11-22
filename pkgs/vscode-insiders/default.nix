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
    version = "1700663611";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9524207999ef1159f5e973539d68c69ed1b519f2/code-insider-x64-1700663611.tar.gz";
      sha256 = "0kzzw68wzs68kw75z73d8pg4qz6cy2790n1217qr3m6l90m9awwm";
    };
  }
)
