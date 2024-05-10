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
    version = "1715320204";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/1facdf8117ba7aa833fa90539414e310a581e74c/code-insider-x64-1715320204.tar.gz";
      sha256 = "1kzpzaka5qz4p7lnhnsgbbqhr80alysl4fvz7hwhq2ad6vmkjqi8";
    };
  }
)
