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
    version = "1685739536";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/506cd5056d875ccdbea2e9a41ba7b9f19103d599/code-insider-x64-1685739536.tar.gz";
      sha256 = "1lal7iwhczxvwfjfc05njfa7vhyladnszzgjwm6w8rqmxk06m3py";
    };
  }
)
