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
    version = "1682487841";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2c51b3de329d48f45eabe80316f099f46fd3a5cc/code-insider-x64-1682487841.tar.gz";
      sha256 = "0idy69mc63y77qmsibxb7766m87ahjgx1hs220lsg1wpzqyz2jvp";
    };
  }
)
