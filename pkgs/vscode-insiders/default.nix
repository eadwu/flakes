{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1597141902";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4c23fc22ced6d0c1f58215ce91ccd08d0c8a0006/code-insider-1597141902.tar.gz";
      sha256 = "0r7jc6d2kj5mnhki3w04v4nbmjycwacpmdlz7wwhvzp89hhy4jwk";
    };
  }
)
