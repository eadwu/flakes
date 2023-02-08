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
    version = "1675879411";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/31e476ee1eafffc4389cd0c8f018ab472898a7ce/code-insider-x64-1675879411.tar.gz";
      sha256 = "0p1lapwgq2ixcf198kpibfyppp97zaz744y83mcqfc8q9y5mg326";
    };
  }
)
