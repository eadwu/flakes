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
    version = "1714080043";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/3415990696a2d269e7f4556369d44ed5b71dfabf/code-insider-x64-1714080043.tar.gz";
      sha256 = "0d8w356y97rqh7z8xy1yprqm11jddsbv80syicnhxmalqgc73knh";
    };
  }
)
