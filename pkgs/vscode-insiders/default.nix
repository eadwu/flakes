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
    version = "1630647445";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/aec6ee09fa1021cb59c7f4f4d000b027febc967d/code-insider-x64-1630647445.tar.gz";
      sha256 = "1kirvvhi0j11nwqqmgbxqx8c1md4nfyij89947mkv1yrz74v8x8n";
    };
  }
)
