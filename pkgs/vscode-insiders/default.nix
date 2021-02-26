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
    version = "1614372441";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e590188f17162393f50feec19263398e6fe02d13/code-insider-x64-1614372441.tar.gz";
      sha256 = "0dh2sp7nwsjip2xq6y2rc1x94wpp4jfgn3ahpa3k57n27z7x1sc8";
    };
  }
)
