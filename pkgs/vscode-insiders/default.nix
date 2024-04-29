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
    version = "1714136606";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b55887a7d96669ea2e70baff32bb2288c640d015/code-insider-x64-1714136606.tar.gz";
      sha256 = "06j6afz0jrs8z9zg03ywdya3xgw79bjpqhk3hv46lp2p79wjy14z";
    };
  }
)
