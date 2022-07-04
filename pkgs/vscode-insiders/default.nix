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
    version = "1656951353";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2932e29645f12f08235b7560b3f7d763b8a1cf25/code-insider-x64-1656951353.tar.gz";
      sha256 = "13q492sb68f2fj4k83f84rdhvnzh94f86dvwway3zxiqysr75mlj";
    };
  }
)
