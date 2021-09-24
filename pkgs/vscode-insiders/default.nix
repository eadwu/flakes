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
    version = "1632475596";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8d30d4d922dda917d22f05a81f2ab4fad7349779/code-insider-x64-1632475596.tar.gz";
      sha256 = "0ackvh1ikxhcj133hr4zi1lq5hsy058mga9nr6jabycgwxgc79na";
    };
  }
)
