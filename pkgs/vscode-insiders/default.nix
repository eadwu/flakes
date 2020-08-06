{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1596692971";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/cfbd1999769f4f08dce29629fb92fdc0fac53829/code-insider-1596692971.tar.gz";
      sha256 = "17qlxjgg3nfvl17a6ipd43kklvavny5a4wq5z9jj7mh3y0a9gjf6";
    };
  }
)
