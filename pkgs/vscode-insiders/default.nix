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
    version = "1692180280";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/85dab33f18ea9e16a36609cd203e1f18b1d76e45/code-insider-x64-1692180280.tar.gz";
      sha256 = "02z09c7mrki0mixv6bg5m6jxx4fz24jw8pwbcsrq7akfbk5sfyrx";
    };
  }
)
