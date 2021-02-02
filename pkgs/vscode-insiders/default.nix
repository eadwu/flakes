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
    version = "1612225599";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b99487f4168ba70369edfb8629303be0d3979d4b/code-insider-x64-1612225599.tar.gz";
      sha256 = "1k8a2br3fb0cn316wj8njcdsxxb9fas87ya1311914r5cfyvmpyr";
    };
  }
)
