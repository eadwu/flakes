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
    version = "1697520881";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f1c3b1dcf85e3b6ddb24b7dce0e4b122e8ce6233/code-insider-x64-1697520881.tar.gz";
      sha256 = "06n8w6bl1i3chlxkvkwihqvakn8iz9pxxfm4niam7cynbwhv5fc8";
    };
  }
)
