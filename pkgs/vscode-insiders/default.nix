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
    version = "1681451522";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3ad5774eb8123d4224eb55629df9e5f82fe13b99/code-insider-x64-1681451522.tar.gz";
      sha256 = "03rv4dbg4spakglj9482wqf59c11qsq94jkbnylyz1n352qk37k8";
    };
  }
)
