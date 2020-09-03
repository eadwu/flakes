{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1599159716";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e2f63c9013a2b55db2d593d45b8c8aecdbe70f25/code-insider-1599159716.tar.gz";
      sha256 = "07638b9g83cqckm6y1cpqx9jxkywvnc123ansxhzkcv3zgb6hwa9";
    };
  }
)
