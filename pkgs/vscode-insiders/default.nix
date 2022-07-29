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
    version = "1659093334";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/12b08be500f8a307f30e92cbc3ee39ba115eab69/code-insider-x64-1659093334.tar.gz";
      sha256 = "076ndgaf1a5as5w1251gxcidrbvrhq2lssx602il188cw2flah8b";
    };
  }
)
