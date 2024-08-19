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
    version = "1724066047";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/26a90463972295bcb960b7487a7c69afa06626eb/code-insider-x64-1724066047.tar.gz";
      sha256 = "1bzm84zzriwhqljmpb5gwavb0m6c1kzhb2d5kbxrafg1qmn234p2";
    };
  }
)
