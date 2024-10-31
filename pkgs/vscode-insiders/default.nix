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
    version = "1730400425";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/02565ff910d27d58cb375a2a4162ac857990e6fc/code-insider-x64-1730400425.tar.gz";
      sha256 = "0sd8jf8j7jjq51imwgsv3zldg1nvqr86qqp8rh4q2lmw82c5fl49";
    };
  }
)
