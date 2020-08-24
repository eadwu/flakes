{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1598292523";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/32dde5598df15c19d76aa197dad05a16382b49c7/code-insider-1598292523.tar.gz";
      sha256 = "0bj1vq7d4bfxl04q52jby5jqcd77swawfz0qvqax873bq6i7xf6j";
    };
  }
)
