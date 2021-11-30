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
    version = "1638275553";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/827f76521d33a61c19e92160649a0a6af8bad132/code-insider-x64-1638275553.tar.gz";
      sha256 = "0rkyc8lj09drxw3mbbsf995p5mp43w7cfxmil2ihbcklq4xi18y5";
    };

    postPatch = "";
  }
)
