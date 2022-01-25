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
    version = "1643101775";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f93c69659de1a1466bd15e0f1c9f790e73be9208/code-insider-x64-1643101775.tar.gz";
      sha256 = "0rbmsvdiy2plz5n6xnbp3kyj4339ah7bvm1za1ahasmhkhl5g038";
    };

    postPatch = "";
  }
)
