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
    version = "1634639926";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bd6e614cda22c947b7c3e1ebef1cc591071731de/code-insider-x64-1634639926.tar.gz";
      sha256 = "168817xriqcbi05kgfik2l62ssl55dqqk5hqkiwfy0s7i7g3adgv";
    };
  }
)
