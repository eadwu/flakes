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
    version = "1632894714";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4fbe0344a0cedaf2a04edef728c9a3f27777cc6c/code-insider-x64-1632894714.tar.gz";
      sha256 = "1bbsy8w7dp8s2kbfpcizf2f5pryywfp8r2zh5ynm2h1h8xr01l4j";
    };
  }
)
