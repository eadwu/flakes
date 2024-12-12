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
    version = "1733982558";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/6a5c8cf95aa814b5cb92de617096144b1f45af2d/code-insider-x64-1733982558.tar.gz";
      sha256 = "1a1vr6sfi52j92p10dxd7irkyahwb137mwnrqc388f6fkwzlsb34";
    };
  }
)
