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
    version = "1621920953";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/286b643ecd231f66f3f2e67e1456f3c601838b46/code-insider-x64-1621920953.tar.gz";
      sha256 = "0i78d5sfzjzgi2383raj3svnk6j794vnngq996fynhkqll2nb8wa";
    };
  }
)
