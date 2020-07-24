{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1595570300";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/731f9c25632dbbf01ee3a7892ad9d2791fe0260c/code-insider-1595570300.tar.gz";
      sha256 = "1c8c4bhii44lp2q6dx1gv4sdlwgij5i8xvf5wqj6hkiicwm34sx7";
    };
  }
)
