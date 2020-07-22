{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1595396981";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0a7364f00514c46c9caceece15e1f82f82e3712f/code-insider-1595396981.tar.gz";
      sha256 = "0z8d4jc06dpjcnbnf5wr5m7gc52781lrf9izc66c5irrcgw8vzb3";
    };
  }
)
