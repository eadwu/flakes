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
    version = "1652161252";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/dcf27391b7dd7c1cece483806af75b4f87188e70/code-insider-x64-1652161252.tar.gz";
      sha256 = "0yqx766ihkgwvqfxd3dvzsq5ng44642rpzwwmdxg7mq5izsn9h32";
    };

    postPatch = "";
  }
)
