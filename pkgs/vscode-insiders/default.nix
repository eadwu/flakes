{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1599828225";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bc38b0accb3c62180317c63dbe7323200977db0f/code-insider-x64-1599828225.tar.gz";
      sha256 = "07l9kjbk0l0r4g5ixmn3wrvan4q8hrjp82z0ywpzbgr5pbq4qmn6";
    };
  }
)
