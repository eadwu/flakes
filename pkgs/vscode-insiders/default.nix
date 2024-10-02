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
    version = "1727847009";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/889feaf2ef663d9d3b079c4a3627e4ce27027323/code-insider-x64-1727847009.tar.gz";
      sha256 = "03zs0g9bfywpdb1q4p51c7aga79plpbxlaixmwrassfs6545cvx4";
    };
  }
)
