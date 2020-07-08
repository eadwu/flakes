{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1594182077";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/59c7cbcf15745e4a8adb4fc59b63aa93f14d3cc3/code-insider-1594182077.tar.gz";
      sha256 = "0q07m3gq26q2bb082y3ga9ik2pqcmywp4jmmgd9j4k8lx4hbghsj";
    };
  }
)
