{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1599118082";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8c9b4015feb0297d99c8051c35e85d208ffe83e3/code-insider-1599118082.tar.gz";
      sha256 = "0c7qsjp3bp7p62zqrm7zxl5svcfqsr6i73r8awiv280b8fqcj1r8";
    };
  }
)
