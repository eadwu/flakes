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
    version = "1618573217";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ce791d27dc9889a392f4d29abefe9c53eb0b5129/code-insider-x64-1618573217.tar.gz";
      sha256 = "1gni52y47cycj7gw1lg755j7fkrw737mn0m4nk6y0ppcb20s66kz";
    };
  }
)
