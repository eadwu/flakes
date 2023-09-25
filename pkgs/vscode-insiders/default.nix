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
    version = "1695638486";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/109e1f8d8afb754ed31317f79937a44e98d5063b/code-insider-x64-1695638486.tar.gz";
      sha256 = "0m4hkgxcak9wf7k3ghd23f5s6aw579r5xs3v98ql038mcs1j5idn";
    };
  }
)
