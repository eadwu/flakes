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
    version = "1657518083";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e69176aafd282090e18f558c2b2ac9b3d5b606f5/code-insider-x64-1657518083.tar.gz";
      sha256 = "0sypmfgs2s3kcayqfh4rcnc6v7giwb9171hjw9y481dy3dwlyrjv";
    };
  }
)
