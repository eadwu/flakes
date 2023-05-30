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
    version = "1685425389";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/784e72bc4486b7ea5ad3447c506e31d949848592/code-insider-x64-1685425389.tar.gz";
      sha256 = "1b2h40i9myjck0ch1x9k8mp1cps8297idr0pvdqb18s10x6w7mck";
    };
  }
)
