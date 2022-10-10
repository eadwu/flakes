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
    version = "1665397291";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8e1235ee25e3aad3598ab58016c071b5596b826a/code-insider-x64-1665397291.tar.gz";
      sha256 = "0dg6iajfik40qwy64f9jbfvaysmnh4bm54icv05gq0gvik03a19h";
    };
  }
)
