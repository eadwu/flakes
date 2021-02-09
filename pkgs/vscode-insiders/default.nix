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
    version = "1612860948";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/cd97629c4458c05b16a1fd444d21c61295ba2529/code-insider-x64-1612860948.tar.gz";
      sha256 = "1ywv39gjxrgaj9a3mzgkma554xjl4bp70wrx5lmzjh5k77n0l44r";
    };
  }
)
