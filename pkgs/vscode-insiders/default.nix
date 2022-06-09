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
    version = "1654689749";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4af164ea3a06f701fe3e89a2bcbb421d2026b68f/code-insider-x64-1654689749.tar.gz";
      sha256 = "0vrd8d9rfrhdllyva7k46gy9srxx5vghpmry8zaqd8mfkvw2igrc";
    };
  }
)
