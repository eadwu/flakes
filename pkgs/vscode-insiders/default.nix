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
    version = "1607618561";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/dbbf7079b20b3036b3ff5ac2e2106b84dd3c6d66/code-insider-x64-1607618561.tar.gz";
      sha256 = "0v79ih6mp06d28df4aw8qpmm8svsw80h6mp4zl52mw0l15rc1ra9";
    };
  }
)
