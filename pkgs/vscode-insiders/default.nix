{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1592606921";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b9d7ec9ff367a8e59fe4cc2abee605a55be180e8/code-insider-1592606921.tar.gz";
      sha256 = "061bjvbya0ik5564pyqfx7ccd160ihyy7b6inqbxzpb8rd9f6yny";
    };
  }
)
