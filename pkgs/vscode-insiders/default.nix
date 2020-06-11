{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1591861653";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6efc0b6950cef0dbed0a59c23c656a3f2cfb6403/code-insider-1591861653.tar.gz";
      sha256 = "1xyhsbxd2nbk72i5507wx7vyw1i6vm4cinncrricp4gyq8nvv7jq";
    };
  }
)
