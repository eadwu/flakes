{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1601617558";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5052a7bc2ec35879b4ef5c835de78c9620bc1d9e/code-insider-x64-1601617558.tar.gz";
      sha256 = "0ayyfbgaxn3s03qcsi5pghz4c6ww9glv5p2v25696c1drq8ww857";
    };
  }
)
