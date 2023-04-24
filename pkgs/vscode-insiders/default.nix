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
    version = "1682314959";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3a69e153f6c68b2b855fb2f1e5bdb798a16a1ee4/code-insider-x64-1682314959.tar.gz";
      sha256 = "1r7acv22fdvjvih3fmfil24hx0m8k0l8np737g5ici0wzm4yv16m";
    };
  }
)
