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
    version = "1678427712";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b60db78000bfa99d1b290194ed4651c4ceef02cc/code-insider-x64-1678427712.tar.gz";
      sha256 = "1w4pg9nad7kmjvzfaxgbyp3jwsshs6415llyq2q56810g2i369z4";
    };
  }
)
