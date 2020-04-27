{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1587966531";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0778354f3a6a2c21b7f738a5e6b02e2f1c765e73/code-insider-1587966531.tar.gz";
      sha256 = "1i2r47b75wipc66iqai473j4yymajziwdwziswga5y8a32il6019";
    };
  }
)
