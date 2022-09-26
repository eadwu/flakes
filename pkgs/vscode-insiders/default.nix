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
    version = "1664186734";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/831678f718c8e998adc40d4854d9d35d9586a09f/code-insider-x64-1664186734.tar.gz";
      sha256 = "1fchvb4rxscidb729ir99dx5ybbfpma0vw3g4j1zc9r26nah4h2j";
    };
  }
)
