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
    version = "1632116459";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c28c86fcd12e4f8693d6569deadfc740dcf8f55b/code-insider-x64-1632116459.tar.gz";
      sha256 = "1rjb8ax8rp2k6c49sz5kks1mrf4pjixqm8zyvz21w22y14rnwnw2";
    };
  }
)
