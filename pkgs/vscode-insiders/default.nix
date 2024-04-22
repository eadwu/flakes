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
    version = "1713765028";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/5ae5a741bdb676abb667fd4896dc2a40e313db3a/code-insider-x64-1713765028.tar.gz";
      sha256 = "0varaz8sszl9y7b93x5ba1lvyvp0qjxspjafrs4kf536qscb18qj";
    };
  }
)
