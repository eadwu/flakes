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
    version = "1732097324";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/8d1d1373cd9b8408222b51958e9688827a9e27ce/code-insider-x64-1732097324.tar.gz";
      sha256 = "1n1jirhi3nv8sl0y3v0zjj1zhpxzpm3iq16cswdicznj7dga3ghr";
    };
  }
)
