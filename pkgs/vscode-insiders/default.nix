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
    version = "1613626108";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6eaef7d42f982a0e9b22ac465245fc2c27721fd0/code-insider-x64-1613626108.tar.gz";
      sha256 = "05ip7rajy1l9404yhw2ncacr4y8vpkw6lwh36hb4diy89gdrh8j1";
    };
  }
)
