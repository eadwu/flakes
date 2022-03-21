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
    version = "1647848882";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/eaa2b431ac259fddf5aa11aa53060a9b70068b29/code-insider-x64-1647848882.tar.gz";
      sha256 = "0gaxsjiim24pd71g73srhlaznm4ak03bv29x6zi88mjgq483j70m";
    };

    postPatch = "";
  }
)
