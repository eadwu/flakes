{ fetchurl, vscode }:
let
  vscode-unwrapped = vscode.unwrapped or vscode;
in
(
  vscode-unwrapped.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1655790180";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/10e6e876822fa2da15fb68e8a6f1fb9aa8d94ce2/code-insider-x64-1655790180.tar.gz";
      sha256 = "0w7y6m7caxgayn0hj0abh08ggklpqa2hcd03dh88cnd8s6p0h2hk";
    };
  }
)
