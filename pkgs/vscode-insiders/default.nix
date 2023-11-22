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
    version = "1700631319";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f3da7cb46a8ffbea21998420dc673777715e55cf/code-insider-x64-1700631319.tar.gz";
      sha256 = "1zc4iiwjpb7xh1c70alih48k74hp4274l2h10f5gxryvl1aa02a6";
    };
  }
)
