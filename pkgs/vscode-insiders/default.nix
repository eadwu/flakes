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
    version = "1724916242";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ae45c9d4b0f71d53151edc6d18be09107903c229/code-insider-x64-1724916242.tar.gz";
      sha256 = "13dk81q2kyvb1kifs6j2fjimyaszx196zrldywpndg8jp16dy3gl";
    };
  }
)
