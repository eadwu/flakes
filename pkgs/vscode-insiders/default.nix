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
    version = "1622525405";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1e446dfadf588ec28b3fdba7ac083bfa1d45df3c/code-insider-x64-1622525405.tar.gz";
      sha256 = "18ac59ysh0f95g0d4n4hq8a7x7p8rza070casmirq0cfszmq3a51";
    };
  }
)
