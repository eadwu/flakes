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
    version = "1685565559";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b9a77b3c7b43f229a430b28070250d55e5d14858/code-insider-x64-1685565559.tar.gz";
      sha256 = "1fqp2cwpsl5n9hxfy101k4f02rw7adwnr889y2068ahlqbi7pc1s";
    };
  }
)
