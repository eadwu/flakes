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
    version = "1690979676";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6445d93c81ebe42c4cbd7a60712e0b17d9463e97/code-insider-x64-1690979676.tar.gz";
      sha256 = "1qrydxwvyzjwcaq6sbnqfmrbzxfh0yj8hngmcg60bakwivr1yxnp";
    };
  }
)
