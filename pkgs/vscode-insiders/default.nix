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
    version = "1624253750";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6afedfdad59d1f1ba4b614341d21c67775e158a9/code-insider-x64-1624253750.tar.gz";
      sha256 = "1zv8glpvbbicxbas81n4063idwilxir6fzxjm5b5c9ys0bnikd52";
    };
  }
)
