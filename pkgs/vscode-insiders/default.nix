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
    version = "1686894990";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0e9c2fa760932b13f81516aff15f2b0112aa6eeb/code-insider-x64-1686894990.tar.gz";
      sha256 = "0all6vrivb46n57zrficlgs72442r53ljypl96mhbvyjh873sn4c";
    };
  }
)
