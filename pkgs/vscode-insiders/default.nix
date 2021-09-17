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
    version = "1631857358";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a0af58197e4a1d3e82fbe3048e0549e622d19f4f/code-insider-x64-1631857358.tar.gz";
      sha256 = "1hp8nhikf3y0aldfjaqbx3vv642fp3ibk5fjqcjnj46gfmpp84kf";
    };
  }
)
