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
    version = "1618983085";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/23a2409675bc1bde94f3532bc7c5826a6e99e4b6/code-insider-x64-1618983085.tar.gz";
      sha256 = "0cgw1v22h6ysa9scqlxk5nms5aajiaknn3fjanlrg8gc2583ysx6";
    };
  }
)
