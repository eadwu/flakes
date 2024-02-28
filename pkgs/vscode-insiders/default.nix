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
    version = "1709146848";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/8c2b09c0443b94d75a73819ed35610f7e09375ae/code-insider-x64-1709146848.tar.gz";
      sha256 = "1d38zbw6kz30w0d2zzvzzwxm8iymra083gzhpqyfmyha24i6ikvj";
    };
  }
)
