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
    version = "1672817880";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4acf2d9b46b75748ae687cf3b2952a0799679873/code-insider-x64-1672817880.tar.gz";
      sha256 = "0h6vdyds2prjhznzqw3w592syf9dcq6qwnqhgxgj7zm2hdarw42h";
    };
  }
)
