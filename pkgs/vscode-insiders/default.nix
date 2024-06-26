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
    version = "1719435965";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b9f2435180d51a26185b00b71ec43a07a4739ddd/code-insider-x64-1719435965.tar.gz";
      sha256 = "0jkfxf4dzbydmr0yian7hmm84k5zs7h7qiis0lyyk3m4gz4nn46j";
    };
  }
)
