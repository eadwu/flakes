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
    version = "1704864989";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c973ec767338f7846710cc2ee46e38b4504a044c/code-insider-x64-1704864989.tar.gz";
      sha256 = "1ha0jmhnyj26idppi26sdq8nqpp2jv47v9m34bsi2195mfnwg32m";
    };
  }
)
