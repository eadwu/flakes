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
    version = "1663147909";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b3546b4bb5aff5254ef857cfd68a3da8534c068f/code-insider-x64-1663147909.tar.gz";
      sha256 = "071hg2dki0friz6va01qg7sm1pqbvlr7mw3rg7w6x36ylqvwrk99";
    };
  }
)
