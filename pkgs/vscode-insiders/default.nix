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
    version = "1727966198";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/d661252b206cce605a963b031a5281cb1dd5deae/code-insider-x64-1727966198.tar.gz";
      sha256 = "0i5x63w84kcmqc7crhdqvslww1740gr37skzws2lf9mzrjcnc6a6";
    };
  }
)
