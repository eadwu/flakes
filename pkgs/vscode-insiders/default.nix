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
    version = "1719467435";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/cb9d1e4589a05bed292f298acba7369e812f8cf1/code-insider-x64-1719467435.tar.gz";
      sha256 = "0w07djsk56jym9078hcbmwfj1bsvwk7bgcgk66l4kkqkh7hy0wpx";
    };
  }
)
