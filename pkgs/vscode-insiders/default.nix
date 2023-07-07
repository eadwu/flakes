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
    version = "1688709329";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/31f183271b0d1f24a2052f6eccbb76bdef45d60b/code-insider-x64-1688709329.tar.gz";
      sha256 = "1rs05whb60qi26ssw8r6nhrhwswpd62h2vxz18d4d0y2hd8f0gai";
    };
  }
)
