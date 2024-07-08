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
    version = "1720453521";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b7c13a78e93c2762972be705c032fe8295a87ddb/code-insider-x64-1720453521.tar.gz";
      sha256 = "0zqififkw8x4fp77ic6a57h0yk3vsv5sb3n92sn3ajpzx7jz28jx";
    };
  }
)
