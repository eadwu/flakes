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
    version = "1639979337";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/807bf598bea406dcb272a9fced54697986e87768/code-insider-x64-1639979337.tar.gz";
      sha256 = "1i5ai9jlvnna5bfdjgdnsh2w91nvg37bja7bjyxj46grhgv1j317";
    };

    postPatch = "";
  }
)
