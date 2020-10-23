{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1603432148";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b72c840ba04850dcd56be0f3ad843ee92067c8c6/code-insider-x64-1603432148.tar.gz";
      sha256 = "1d1346y3fv8ig6mgx8j0y3znvmy4pbhbq2fzy25pdgvndsr8pjy3";
    };
  }
)
