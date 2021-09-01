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
    version = "1630461664";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b6a7847b1d6be302f579ef39d2b9ab891d92eed6/code-insider-x64-1630461664.tar.gz";
      sha256 = "0j95m46kg2id5dbg1rlpvk7rmcxryhp5mz8vsq0d4yff76ds0dfc";
    };
  }
)
