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
    version = "1678708074";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/522890f47c000a79c4f4a42f1325758c4c23b010/code-insider-x64-1678708074.tar.gz";
      sha256 = "0pxdgpja8b938ja6kn5w3x9r6h3plmb1f8kznyz8zirgnj0grckx";
    };
  }
)
