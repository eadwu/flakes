{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1596779657";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/20cba51fb305868238eddc69758d259c29b3230d/code-insider-1596779657.tar.gz";
      sha256 = "0nw0fd8k25zjic3dvcv9m2wkw7vmdhf1137xi1jsqsfgbb9clpjc";
    };
  }
)
