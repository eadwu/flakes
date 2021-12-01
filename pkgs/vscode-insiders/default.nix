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
    version = "1638337359";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0cc0904c565399781defa830facf43141db8b6f3/code-insider-x64-1638337359.tar.gz";
      sha256 = "0qwls08f0lcy5x5whypbdr5l17y07wj7wxpyh16k0r82wwy5yvxk";
    };

    postPatch = "";
  }
)
