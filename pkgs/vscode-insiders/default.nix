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
    version = "1629483111";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/89bbd372f459ce72e9c0b60eb3b26b924f64f62d/code-insider-x64-1629483111.tar.gz";
      sha256 = "004g0cd5z69lrhmbsl0gkn35844s7b0g9l1i66mpy2zmm0ymr6hs";
    };
  }
)
