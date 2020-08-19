{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1597816125";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f694b07825a23005985b470e767a68927a83a553/code-insider-1597816125.tar.gz";
      sha256 = "0dz52xm134nfqwavybla9qn3ky4p724h363kwi18bi2r6dz0c04s";
    };
  }
)
