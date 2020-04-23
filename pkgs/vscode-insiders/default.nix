{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1587577504";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bd262894bbaac5156d5bf832160b7056c91decea/code-insider-1587577504.tar.gz";
      sha256 = "1166kd6jgwxnv6jhmmxi27jiqc09pbx22l1zva04216whl3dkikx";
    };
  }
)
