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
    version = "1633931048";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e96a97448aae1572246bf7c438b7c2ee68a964c0/code-insider-x64-1633931048.tar.gz";
      sha256 = "0f6h8lbajrx49jnj0ckdak71557c644gyb3l5mr9an0pkap5a6wy";
    };
  }
)
