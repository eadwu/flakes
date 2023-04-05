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
    version = "1680673996";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8f74fbfd1f2d8f6268a42df131726b218aafe511/code-insider-x64-1680673996.tar.gz";
      sha256 = "1yckfzngld11va0031z792zhyqa58gmk4zc63q10b16vzfap0b0r";
    };
  }
)
