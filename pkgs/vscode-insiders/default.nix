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
    version = "1686645755";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5b738ad6b205777e69f1408c4f38539783cd8152/code-insider-x64-1686645755.tar.gz";
      sha256 = "093ar0wcwp3pni5hysh9d7vpgs49dvgrbv1cphnm2w0d17zknz6l";
    };
  }
)
