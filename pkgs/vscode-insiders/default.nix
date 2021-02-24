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
    version = "1614166776";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c47da720f351455681978a48edc4d9a0d095ea0e/code-insider-x64-1614166776.tar.gz";
      sha256 = "0878fbrsvbbdzr35bwrm6b69qxvjz7s1cgvbbyradfr5nc65y6wg";
    };
  }
)
