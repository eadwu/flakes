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
    version = "1700041200";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b3a649fe52c0fb8692c9b28dfe25227c97521884/code-insider-x64-1700041200.tar.gz";
      sha256 = "13p3izya69dd4b96y892fcawd9y8vbh9mvsx2fyaakrkrm7mqbic";
    };
  }
)
