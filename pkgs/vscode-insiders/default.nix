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
    version = "1689053910";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6243562032a9a168df33c1b4dc84d5b2abbcb22d/code-insider-x64-1689053910.tar.gz";
      sha256 = "1afrkj64lyz2l417ciips6pv835gkvbw3f173894zfg02vpmzb1b";
    };
  }
)
