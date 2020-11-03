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
    version = "1604354871";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/fce8fc82cacf0b4e2a18c633b6c6f3058702a5c9/code-insider-x64-1604354871.tar.gz";
      sha256 = "112ncgl442ii0bbkld29mlycxv2vmlkiqkf8cwr4z25bd4wdyqv0";
    };
  }
)
