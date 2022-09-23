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
    version = "1663947405";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/43676d69e091e7f9451667925f3f0cc20d7e7221/code-insider-x64-1663947405.tar.gz";
      sha256 = "0f58yqsmlk1lrjysdzqjwjivikwc4nzw31krjr60xdm7iwxwb7g3";
    };
  }
)
