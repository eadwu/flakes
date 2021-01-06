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
    version = "1609947855";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4fe3f75c6d3d88a19c47f029524172303f1a1a82/code-insider-x64-1609947855.tar.gz";
      sha256 = "0lp2xm3pq5j9pssn0jm0w3xwcdwfrkwcdaz7jivjfl67gqxnn6qb";
    };
  }
)
