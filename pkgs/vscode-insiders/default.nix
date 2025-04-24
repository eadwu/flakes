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
    version = "1745472773";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/3339a04f314e19d70391a4744337e135549be9e7/code-insider-x64-1745472773.tar.gz";
      sha256 = "0vixnqfwkpsjgqjxsdjqr5lvyqfrpwjm1shf3bhgj0hxhbzcagqy";
    };
  }
)
