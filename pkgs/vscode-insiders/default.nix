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
    version = "1628233592";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/49af1cbe00271ac2ea36cfc5f7352fe31a7b0094/code-insider-x64-1628233592.tar.gz";
      sha256 = "185gfbd79s3q0zassh3zpx741204s58ggrbdc9z0nj571ld7p426";
    };
  }
)
