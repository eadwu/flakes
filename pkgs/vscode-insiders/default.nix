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
    version = "1714759097";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/816c6f7d7bc4da9796cd19ac6b122b6e26f50d7f/code-insider-x64-1714759097.tar.gz";
      sha256 = "1xcy8rh3ij2r2ra04kyag2a8ih6rklyl5v2yyqpq4gnl84q8h5nm";
    };
  }
)
