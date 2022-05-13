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
    version = "1652420473";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/113287ccc3be52dc3409d451a9b3416d133dca1a/code-insider-x64-1652420473.tar.gz";
      sha256 = "116dzj004w5khdick5fjws2fvajwqk1vbvvh5hy1ykr846jiw4z4";
    };

    postPatch = "";
  }
)
