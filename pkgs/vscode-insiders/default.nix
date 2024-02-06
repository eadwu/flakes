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
    version = "1707218669";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/cf7ddbb51d0eaaed6dc25d2df137594254f3b790/code-insider-x64-1707218669.tar.gz";
      sha256 = "0v0pq02kvhgdmrkdqi88xyfyk25hnq10vqzhnwb5dmdq5fh30klb";
    };
  }
)
