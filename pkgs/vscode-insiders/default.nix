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
    version = "1661434290";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9529e11f6481ae53bba821b05e34549491b9415e/code-insider-x64-1661434290.tar.gz";
      sha256 = "1rwjvhskhxfbqbdzqjppwr8lfbw5licpy8yxvxh7k73mj5d5y0da";
    };
  }
)
