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
    version = "1725458306";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/4849ca9bdf9666755eb463db297b69e5385090e3/code-insider-x64-1725458306.tar.gz";
      sha256 = "0c8ysc56cwhcggflm7c32cww4gj7l1xvljhygvfx468vv73919mf";
    };
  }
)
