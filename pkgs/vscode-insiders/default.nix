{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1601448989";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0c50e1db17168a738235bd7e5c02b9f05ea5df59/code-insider-x64-1601448989.tar.gz";
      sha256 = "1ini97zr6s174ggkfnsyp9d0lj1p6yaqdqgzw3zjk4n8vzfq94aj";
    };
  }
)
