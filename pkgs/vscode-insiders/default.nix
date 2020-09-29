{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1601368722";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9de65ab77e587cf7ab5dd00ea301cd5431b0f397/code-insider-x64-1601368722.tar.gz";
      sha256 = "00lh8c57g9w1a9mykkpi0vrz3v7jjaqxq9d3mnalnl02lggdm33w";
    };
  }
)
