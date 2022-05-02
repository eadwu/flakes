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
    version = "1651469691";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ed2619e11b68bec43b788486230b0c2afeb4672d/code-insider-x64-1651469691.tar.gz";
      sha256 = "13qlzg5525jisarm6zc0ccx4cphc0j4w7n6qqnffby5qq5ljnvgs";
    };

    postPatch = "";
  }
)
