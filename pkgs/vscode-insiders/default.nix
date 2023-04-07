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
    version = "1680846232";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ea0e3e0d1fabf0622fbcacdc4fe1c7b73b34dc0b/code-insider-x64-1680846232.tar.gz";
      sha256 = "1dbm9kn4iv52q0skifa0w1ic09g7w613g80al52m0zm1ir85i1vl";
    };
  }
)
