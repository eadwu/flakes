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
    version = "1720138333";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/82104a3a6cf8713b81e5bbd97960dbf5c82a816a/code-insider-x64-1720138333.tar.gz";
      sha256 = "02zi6gpw4wfhiqrmwf8dp65757v0dl9fwxyna2z6wipvsmlr16n7";
    };
  }
)
