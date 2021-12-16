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
    version = "1639633427";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f67a8b753f55e452f38b61497662839c4691fb12/code-insider-x64-1639633427.tar.gz";
      sha256 = "1v5z6s37qhv7jhra7jijad713zd5h7d3fyiqr6rw8rbgpqzbswfi";
    };

    postPatch = "";
  }
)
