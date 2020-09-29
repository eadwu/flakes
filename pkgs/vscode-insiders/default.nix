{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1601371524";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0580328b728a69768558cc8242067cae7b6a1c21/code-insider-x64-1601371524.tar.gz";
      sha256 = "1ksb27bndnsg0bnid3ndd6cr39vsj5l78d5spacrr14mpwq7p8nl";
    };
  }
)
