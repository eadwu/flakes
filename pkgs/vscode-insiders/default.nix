{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1600153694";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e13875b77c89b95f20ccb5667e14ff164c198e57/code-insider-x64-1600153694.tar.gz";
      sha256 = "04kq7ddsmagyyvlzqk0q52nagwyvd4g5fjk2vds210yiylqrywhj";
    };
  }
)
