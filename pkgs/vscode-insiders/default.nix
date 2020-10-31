{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1604104038";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/49696e87c64f478f97909a91d41ff2913df9bf71/code-insider-x64-1604104038.tar.gz";
      sha256 = "0dklxjqpj73ffyd3p5l0hcqcqidqk7b60gn13827kl0rnka7f4hs";
    };
  }
)
