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
    version = "1747125918";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/4b88fa7949c13eea3369e8a05042a03f2f9df8be/code-insider-x64-1747125918.tar.gz";
      sha256 = "176ybcc6gr172z30d60v61bmiad3yd7vyjc4pg8xlnpcrw6mgkcl";
    };
  }
)
