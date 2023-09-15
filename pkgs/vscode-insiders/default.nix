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
    version = "1694756103";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bccfade64adb249f57c8fcf03cba41609f76ce5c/code-insider-x64-1694756103.tar.gz";
      sha256 = "1hcr2sljn461g9xldh9md8qai9nzpln80m0i46l91pgil2w70hc0";
    };
  }
)
