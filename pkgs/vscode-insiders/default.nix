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
    version = "1760937449";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/42943e3121fe00fcedf95b64ada12f82b54ff082/code-insider-x64-1760937449.tar.gz";
      sha256 = "04mswyxd6889vjy7pvqfzvpaj6klc61jnjn0id4acr6ycbspih3h";
    };
  }
)
