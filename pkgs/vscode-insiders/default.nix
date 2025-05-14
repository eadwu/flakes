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
    version = "1747200034";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/53524ccad173e498ee03286727e3434fc9d51d5e/code-insider-x64-1747200034.tar.gz";
      sha256 = "023mzb5ghy8816vnszh93zvqmvv4srhxwqi6kaz6aa4vxf9d0z4d";
    };
  }
)
