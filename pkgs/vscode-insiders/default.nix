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
    version = "1693376777";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/35be9bf683eace09796e59d54f1f225bbc3a7866/code-insider-x64-1693376777.tar.gz";
      sha256 = "1ajsjam5h6v4y79v2zamxgqr4hn39cyyjjwandh6xn6pzk23757g";
    };
  }
)
