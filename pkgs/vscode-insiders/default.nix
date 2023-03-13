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
    version = "1678747197";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5c94e9f6dcf6ff2ccd84f298b47eb525fd328d63/code-insider-x64-1678747197.tar.gz";
      sha256 = "0mv7p9yirk4gzf0q6bvrr5p289byl1sf34ws5bclhby5978xj4hq";
    };
  }
)
