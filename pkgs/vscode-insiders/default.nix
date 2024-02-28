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
    version = "1709077226";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/019f4d1419fbc8219a181fab7892ebccf7ee29a2/code-insider-x64-1709077226.tar.gz";
      sha256 = "1q9qw1inhnz3kaa7srniqxmskfrnxmdl4l40615gwyw5ms9s1yva";
    };
  }
)
