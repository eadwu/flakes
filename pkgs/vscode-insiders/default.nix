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
    version = "1744135581";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/49a93f1195b2fd3f4b926db32638d9d79b332099/code-insider-x64-1744135581.tar.gz";
      sha256 = "1fz6byr9gya999q229c54ir18jxn9qlbv9x27xqvkgas0cfqmq8r";
    };
  }
)
