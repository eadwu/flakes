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
    version = "1667886441";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2282be522a8031209a739783baede67bfa9fc95a/code-insider-x64-1667886441.tar.gz";
      sha256 = "08nd3xfsq5nq28japfric34xkbw8szgh9b9j3rncq236zq0i8zzm";
    };
  }
)
