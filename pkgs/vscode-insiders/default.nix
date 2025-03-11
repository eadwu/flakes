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
    version = "1741670726";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/acb986b977f3f8827651cbc5efb689f9bbede1ad/code-insider-x64-1741670726.tar.gz";
      sha256 = "1vcqvy9q0kwj32mykrzb58lcvcrq8w7c4whn2dlsys47f4vc771x";
    };
  }
)
