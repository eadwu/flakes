{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1598618557";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/21ebf4d282accd98b58bc118bff9b38d562309b4/code-insider-1598618557.tar.gz";
      sha256 = "0rl68rlska5xywnczy8l8hrsvg4xqxg4zj5pzncmlvczcygc4qf6";
    };
  }
)
