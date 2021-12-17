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
    version = "1639719734";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d12df34e31b4a018735d312a8947d79331132368/code-insider-x64-1639719734.tar.gz";
      sha256 = "0v2hsns94qpzwq80i74s6rp1lxg4j7kvc8k64s95gr58adkkw4ad";
    };

    postPatch = "";
  }
)
