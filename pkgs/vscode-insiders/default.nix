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
    version = "1642744138";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/be7ec0fed2492d17984ab4e3764fe3f685e6ddc4/code-insider-x64-1642744138.tar.gz";
      sha256 = "0srll96ncfc37mfyfxshpli0wxav0yyhzcb9qi9r5jg3cm4arhdn";
    };

    postPatch = "";
  }
)
