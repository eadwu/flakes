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
    version = "1741584410";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/8ebc9a6f21bef915c1373b8d0f57a95b496216dd/code-insider-x64-1741584410.tar.gz";
      sha256 = "1liy7lr77nab5w81irnzmjidmsj6yzcbjqq9cb6fs0gvspdpfqlx";
    };
  }
)
