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
    version = "1613971849";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/11cd76005bc7516dcc726d7389d0bce1744e5c85/code-insider-x64-1613971849.tar.gz";
      sha256 = "0cmz2fb96m06lv4aqszr6246928dqygxzydjp7wfkp5yd02i542w";
    };
  }
)
