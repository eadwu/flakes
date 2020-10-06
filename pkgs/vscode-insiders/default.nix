{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1602007422";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b0231fd684c8acca4a7d26a127b298ffb3d3a51c/code-insider-x64-1602007422.tar.gz";
      sha256 = "1bdxnh2z7f8vswni81jljs0b6dvzdp3hjnwl01p6db46s4la3xqc";
    };
  }
)
