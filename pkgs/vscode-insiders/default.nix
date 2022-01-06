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
    version = "1641361203";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f0054e049cd286ff317c738efe0fd8810b48ae98/code-insider-x64-1641361203.tar.gz";
      sha256 = "0b74gsq378mr6gizsk4p1802q3ll9cvqzvrnlgkpf8xhvrgzxvsv";
    };

    postPatch = "";
  }
)
