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
    version = "1688160866";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5b7440441bbd2548a862f7321cafdfa1597132e5/code-insider-x64-1688160866.tar.gz";
      sha256 = "0snicf2s6aal0c4g1f3y0jwx432rdmr3paq7n610x4i3zdypb6mn";
    };
  }
)
