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
    version = "1626241067";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9520f0a515e7e24802c92f885a0efb242fca3831/code-insider-x64-1626241067.tar.gz";
      sha256 = "19vzapik1biar4k13ky9szckbj54j5mqd2yr3759ymamnmh92ly2";
    };
  }
)
