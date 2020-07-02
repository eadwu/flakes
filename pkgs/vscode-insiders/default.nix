{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1593668966";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/04545fa88043fd10d1f3edefd26be1b8245b516f/code-insider-1593668966.tar.gz";
      sha256 = "0n2ncn8xyavx8hzsv2s0sb5nxs5d851yxh8b8kinx00w1ahwzyra";
    };
  }
)
