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
    version = "1645681241";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3112460dc48ce7e557ea9feeaae04b912164b48b/code-insider-x64-1645681241.tar.gz";
      sha256 = "1gbc654cwwlj3n41fjxzs5z1qq07jf7y1xbms9bgf08ahlpd9mcz";
    };

    postPatch = "";
  }
)
