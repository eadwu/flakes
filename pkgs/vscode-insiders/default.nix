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
    version = "1687240661";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8c85702bca51b08005ada7fc4eaf52a61623b2b6/code-insider-x64-1687240661.tar.gz";
      sha256 = "1yh83p8jjzl6a0gjxg6p4x16xi7ridv36zfgzficrjawqzfx3mzc";
    };
  }
)
