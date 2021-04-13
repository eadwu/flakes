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
    version = "1618291856";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/48387dfc3d691558404cff1ea2582e3862a40080/code-insider-x64-1618291856.tar.gz";
      sha256 = "056by07rc3m2v18mdf13zv48pr6mvd0jg49v6kz8s0a9mmhriwk6";
    };
  }
)
