{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1594198719";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/49b121daccefff23c0f325ba6914fb3d0b6d7160/code-insider-1594198719.tar.gz";
      sha256 = "19w6iga0mcpqawi2ms28f60gwfin648h39rv3frc3iyyfh2xzzha";
    };
  }
)
