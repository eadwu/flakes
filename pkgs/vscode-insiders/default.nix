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
    version = "1702877776";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/279872bd965e4030c81129a9bf1ce1710ff7cd55/code-insider-x64-1702877776.tar.gz";
      sha256 = "0i5h5iwjfcrj4awfx31jqxq93iprkzilpjv8yy18fsaf7246fhpn";
    };
  }
)
