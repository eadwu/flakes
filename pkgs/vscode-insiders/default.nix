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
    version = "1723096135";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/8245d426e009ec7864018ed05ae2a282af42f03b/code-insider-x64-1723096135.tar.gz";
      sha256 = "0rqb68kcybjvxywrbki5510q0mli0s101vrrjwilz713y9qxcdcf";
    };
  }
)
