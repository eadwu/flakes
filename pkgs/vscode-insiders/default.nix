{ fetchurl, vscode }:
let
  vscode-unwrapped = vscode.unwrapped or vscode;
in
(
  vscode-unwrapped.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1729662955";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/fe997185b5e6db94693ed6ef5456cfa4e8211edf/code-insider-x64-1729662955.tar.gz";
      sha256 = "0i4arw9xsgc4jqjd80zkym0l4j6zk67fiwlp532s919qqawz8ya2";
    };
  }
)
