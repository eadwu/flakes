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
    version = "1655444125";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/fbf1cf3832d43088e27837dbb68d24ab65a098c1/code-insider-x64-1655444125.tar.gz";
      sha256 = "02c4g2bpwgn4lyv00ffypf6zsn3h7ic9n3ya0l9qgd3bb1sjilr1";
    };
  }
)
