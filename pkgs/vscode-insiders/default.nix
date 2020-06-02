{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1591081773";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1bfa086adb9271ff56be11821da686e4cfffb672/code-insider-1591081773.tar.gz";
      sha256 = "0gqg9xs913d928bhc8vmibsx300acachnnpahaylxb2rfkyihra3";
    };
  }
)
