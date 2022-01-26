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
    version = "1643175762";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/45060913204279d4ecfe0575ca69d68211fb3798/code-insider-x64-1643175762.tar.gz";
      sha256 = "1jfg8xyyan5i9v1np9q2ksk954n12bckpnb1fr0ph7gwz2ijbglg";
    };

    postPatch = "";
  }
)
