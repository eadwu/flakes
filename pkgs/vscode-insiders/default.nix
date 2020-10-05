{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1601926623";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/66b696427273f5d4711cf37a48b57594074f4ee3/code-insider-x64-1601926623.tar.gz";
      sha256 = "0dsrspyk2grg6cx8gf1dzcnymxghn1954j23rsvf5bz6fh466347";
    };
  }
)
