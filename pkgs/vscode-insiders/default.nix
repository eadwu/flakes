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
    version = "1668404685";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a62879bb46c84d0936798cf06debf5f92b04e4b4/code-insider-x64-1668404685.tar.gz";
      sha256 = "125f4mh7zdnkn4183lp4pqmi9q60aq1lp7zhk6csi6ica6yjkm0d";
    };
  }
)
