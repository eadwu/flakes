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
    version = "1721368091";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/89690b9d76a88fab676d26651134a1ffa4562732/code-insider-x64-1721368091.tar.gz";
      sha256 = "0hb4hzr5iy1hkcklvjmwxbggwn7vjnkajmzq9ls19nk365zgzkhj";
    };
  }
)
