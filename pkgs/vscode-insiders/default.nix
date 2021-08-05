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
    version = "1628113148";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/379476f0e13988d90fab105c5c19e7abc8b1dea8/code-insider-x64-1628113148.tar.gz";
      sha256 = "0ayfqr4sa7dk48322b5ywvvxhhfisbadampzb66f9cqrcd621b96";
    };
  }
)
