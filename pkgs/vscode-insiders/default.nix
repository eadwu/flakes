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
    version = "1707457610";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/8fa84589eef3538dbc763ff98dc7d5a8a0c56374/code-insider-x64-1707457610.tar.gz";
      sha256 = "16v2v0rv2jrd1rsynx1yhn9093q2px8w8c8lxh0dn63w8dk901yw";
    };
  }
)
