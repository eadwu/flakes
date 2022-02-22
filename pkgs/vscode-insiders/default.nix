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
    version = "1645508315";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/29f707c1f0dc0df76a98390eacbca440507866c0/code-insider-x64-1645508315.tar.gz";
      sha256 = "0613r0aam18l2wvwy2f4gl9anvw3lf6674i8blk2bl09rvz8k08q";
    };

    postPatch = "";
  }
)
