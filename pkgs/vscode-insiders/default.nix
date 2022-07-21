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
    version = "1658382309";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/62469028a6dce9db5b7c4639be7f447f4ab0e35c/code-insider-x64-1658382309.tar.gz";
      sha256 = "143zy037fcqbr5cfkm73hs4kqcm0arm500c2nha0p5p4rvwv0wgp";
    };
  }
)
