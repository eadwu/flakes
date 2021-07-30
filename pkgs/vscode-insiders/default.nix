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
    version = "1627652677";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/104bc571e956e4af623905ef10dfcc8f0fdac625/code-insider-x64-1627652677.tar.gz";
      sha256 = "0xaqaz9vdrjrj6y60dj1pbcd616gda7r8a232mbk630rjxpviw4h";
    };
  }
)
