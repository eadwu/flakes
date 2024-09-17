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
    version = "1726551935";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c4efe1dc9eec4914f3076b2d954fe4fe174a5820/code-insider-x64-1726551935.tar.gz";
      sha256 = "1fhsmchbmb1j5mwk1jcv07n4aqxkr11vi326lap74p1dkxy1s8kn";
    };
  }
)
