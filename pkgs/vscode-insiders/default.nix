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
    version = "1673243756";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/04b15ff231a2c3cfcdd90d90c16075a9c1e6da15/code-insider-x64-1673243756.tar.gz";
      sha256 = "16r8bx0i8n6n8j978a751nz5b4r02k0lyh6ml3ywb6ncqfglyj09";
    };
  }
)
