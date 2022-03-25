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
    version = "1648220171";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c63ed49b4b164210301f4f8a09079aa4de53b870/code-insider-x64-1648220171.tar.gz";
      sha256 = "1vl3qixpjp30shzl411xqjwr43xp0abid9m0vg8q5xd5wf12j5n1";
    };

    postPatch = "";
  }
)
