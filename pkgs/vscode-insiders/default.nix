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
    version = "1662702414";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0dce868b85978716d4fc7bc48b6a6a54c6a39fd0/code-insider-x64-1662702414.tar.gz";
      sha256 = "07bv78f62wyzalm51qzhmmd6ib60ccbjyvp3x5s4x3jfsw7yy2hq";
    };
  }
)
