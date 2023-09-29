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
    version = "1696020174";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4268e464763087044d0c1b5bdd37ebbe683cadfa/code-insider-x64-1696020174.tar.gz";
      sha256 = "1dvpym7cc0yi8v36mv8q8jyyqfq5ikj8ykm5x9my422f0fj32hmq";
    };
  }
)
