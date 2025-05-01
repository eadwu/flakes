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
    version = "1746076844";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/31609aa0cbb68173eaa27423bbabe74c4a163edd/code-insider-x64-1746076844.tar.gz";
      sha256 = "064d58s8iczshmhj53fc11ar3jqppyyrdp6gb5gni07ngvzy995m";
    };
  }
)
