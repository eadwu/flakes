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
    version = "1692077603";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/cb94a70e1f43b4115e86907165c80d7870f10e18/code-insider-x64-1692077603.tar.gz";
      sha256 = "0kw2dzwnvlpkz9w4kafdnh96gimaj04r5729z5vglpzwwfi6b8ik";
    };
  }
)
