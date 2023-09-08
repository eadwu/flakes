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
    version = "1694194631";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b257cce9e7fa2d5f475ac16c15b40280d0b97957/code-insider-x64-1694194631.tar.gz";
      sha256 = "1isvr6p7qhk6ynllyadac2y9fgsj4y96zb02qdffnaawhky0sh5n";
    };
  }
)
