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
    version = "1679659302";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/21ae43efaeaa83fe42d29903740bc322a53a8f0d/code-insider-x64-1679659302.tar.gz";
      sha256 = "17m96rq2fr6zh3ya21sbcn319ck0vg77mapnfkxzyhy518307w7k";
    };
  }
)
