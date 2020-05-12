{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs
  (
    _: rec {
      pname = "vscode-insiders";
      version = "1589262478";

      src = fetchurl {
        url = "https://az764295.vo.msecnd.net/insider/288852d8c26d797974bfb8aed06e1bff9b809223/code-insider-1589262478.tar.gz";
        sha256 = "1klaq8sdpgrv6frd3ml7kz115c511syjn68p4rdzjyksknbsipf5";
      };
    }
  )
