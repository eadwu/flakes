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
    version = "1722577852";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/3b27f1f74bc09fe2e2068997fcd42768be44a4e3/code-insider-x64-1722577852.tar.gz";
      sha256 = "09wsc8rjbxisw8vmxpmn3gm6fjysmzd5jhf2kqxj949fdpd9jxl7";
    };
  }
)
