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
    version = "1719329464";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/4580ba51fe1914ca29916f829adb35930089b013/code-insider-x64-1719329464.tar.gz";
      sha256 = "01fq9hag67538jxx57r83x86wcv9xfk2vwl9z20yd56y0c64dy7z";
    };
  }
)
