{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1601272277";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/772aa0723f7f6b04b710bc3a92b7a904b60ef439/code-insider-x64-1601272277.tar.gz";
      sha256 = "02llk2rh14pvp70p03356pffhfsayz2qy1wfw7iqfimz7mr77vgz";
    };
  }
)
