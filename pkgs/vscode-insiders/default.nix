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
    version = "1716893295";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c6e45e96a6b0fe94e0dae5b13ab4167d69ec9788/code-insider-x64-1716893295.tar.gz";
      sha256 = "1v046l35r37vf6231cgjrnvyb9pn2y9drk1zd578agcyjas234aa";
    };
  }
)
