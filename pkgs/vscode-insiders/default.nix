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
    version = "1626068184";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a9070718ebb793eef4e94e34307eee15c09a0cd4/code-insider-x64-1626068184.tar.gz";
      sha256 = "05fmqcx4ayb0hgy6lmfm0xxj52z0z7kif8ypm6hbwvvd8wx4kbhk";
    };
  }
)
