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
    version = "1666079754";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1c78193f54fac6036829ec554ce218d99afc1f15/code-insider-x64-1666079754.tar.gz";
      sha256 = "0gcb6lam3qrv7rwy6cqnqdimyws27spflxfs7ji42nzjq8ihch91";
    };
  }
)
