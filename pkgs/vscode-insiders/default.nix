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
    version = "1720602765";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/8703a11164db333db471576d38ddc143d6ad7ead/code-insider-x64-1720602765.tar.gz";
      sha256 = "0m9bf4f12g0qzry6pazjki671zdcp03k7j1jpxh19910j0ky1634";
    };
  }
)
