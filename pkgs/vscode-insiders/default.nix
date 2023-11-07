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
    version = "1699335278";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c97d74fba0df6c8da3e0e469a4f37c4ed9612682/code-insider-x64-1699335278.tar.gz";
      sha256 = "138lgd8pmhqwpyc01s8r63bf0vzjrfrr2mqqximf94xn7bda6cc1";
    };
  }
)
