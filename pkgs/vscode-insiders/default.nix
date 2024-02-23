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
    version = "1708642297";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/1cc266cc82838981034c2baa637f357a83711d5d/code-insider-x64-1708642297.tar.gz";
      sha256 = "0qbm5g0n6w6m6mf591z96fwwjkxpjylphqkprz9ymzypgz017ig9";
    };
  }
)
