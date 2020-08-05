{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1596606087";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d13d2fc56da7a2f8bcad4256212db0661fcbba45/code-insider-1596606087.tar.gz";
      sha256 = "0n7dgdhfi4xg8fwjpw73ssn5wz00fs9mjgl9ll98wgy866wi66j2";
    };
  }
)
