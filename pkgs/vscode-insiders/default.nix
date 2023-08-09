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
    version = "1691612000";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/01f748f60792a8c3bb3b9863cab2771a9c8efaef/code-insider-x64-1691612000.tar.gz";
      sha256 = "1bwd7yplm6nr9b1mwy6b7mrvyr3srdg722h1n6bxd0rwfgld8rd6";
    };
  }
)
