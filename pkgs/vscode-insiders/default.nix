{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1593496212";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/da73d2d11540232a5c75788ac0c9b41c3d432b2d/code-insider-1593496212.tar.gz";
      sha256 = "0cam42zwyhh1h66zrf9v11jldk21lrd9pms637a9dd2589s81sn1";
    };
  }
)
