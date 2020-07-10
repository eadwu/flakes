{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1594383165";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e7920dce7bfd0b707ebfc0a5379c6edd2233e475/code-insider-1594383165.tar.gz";
      sha256 = "0q8a0lgh2vyw106aa7l5nj883w4xj2q7dsf3hnb6rfi26q45qihl";
    };
  }
)
