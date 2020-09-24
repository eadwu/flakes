{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1600931432";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/635cfbcd0f36bf3562b2f45a4995293869c15db2/code-insider-x64-1600931432.tar.gz";
      sha256 = "12iik9w46kwgj27v5zq5rakzvrjynzklc7xygg64zaji2hbq7qyn";
    };
  }
)
