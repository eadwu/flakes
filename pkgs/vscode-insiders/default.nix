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
    version = "1655271619";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0b74e15affc1b44a5b7cd671dd0a02d3ed6d51a7/code-insider-x64-1655271619.tar.gz";
      sha256 = "02zag5mbrv91hj4j8praj7a4bfs3siavj6lxbsiapygjr6qr5nqa";
    };
  }
)
