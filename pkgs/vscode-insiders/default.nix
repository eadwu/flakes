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
    version = "1679636937";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c83f54aefc2dd212c01a42c57c930aa8a13af3a6/code-insider-x64-1679636937.tar.gz";
      sha256 = "0pii4in1z6ak1g44ki53cq26x3hfl1di4rh6qc6fl948zznz64jr";
    };
  }
)
