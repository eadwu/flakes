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
    version = "1689572059";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/02d3b49d8035a9b30db3b0ae706796af9b1a4260/code-insider-x64-1689572059.tar.gz";
      sha256 = "0h6df3kblji4i58qdxfdxhzxabkym40kav87njb10nlkpfjgdrlc";
    };
  }
)
