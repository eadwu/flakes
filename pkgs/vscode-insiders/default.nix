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
    version = "1689928384";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/822ad2de026bf4cf858d17237937a3ca743d1b22/code-insider-x64-1689928384.tar.gz";
      sha256 = "0334g5wxaqm30jyqbk8nybvndacfvnqdmmccg0aa9ayvlmk29wim";
    };
  }
)
