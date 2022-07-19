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
    version = "1658209651";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a74adedba8fb56d14f01f7950340dab33cfeae57/code-insider-x64-1658209651.tar.gz";
      sha256 = "1vacpn1acjxcd7vks1qnj616vfj3g8vnpiyzmgsn4l2d1sxp9r5h";
    };
  }
)
