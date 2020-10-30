{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1604037639";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2d8bbc6976748c4b0c5e84be541674b89b9d91e4/code-insider-x64-1604037639.tar.gz";
      sha256 = "04fhrn6r4bx3sygibpzzndf3z3d3sxib44xci57bax1m6prdz79q";
    };
  }
)
