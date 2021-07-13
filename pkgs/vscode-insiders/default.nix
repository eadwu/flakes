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
    version = "1626154730";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f6df685c62da50886f7540cbf768ed4333d58bea/code-insider-x64-1626154730.tar.gz";
      sha256 = "0ih3gij9rc3x1qfrzbf8zazn5w6ajfjpb6gkkqjzwdz1x9n17qss";
    };
  }
)
