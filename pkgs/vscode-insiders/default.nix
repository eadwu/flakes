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
    version = "1665481898";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bd1b7a384f8a5ab9fb5a6a0e8fea370e589f43a3/code-insider-x64-1665481898.tar.gz";
      sha256 = "1sp9hid4g4krffs7dk98pan2awl5r5n4339ah8z2wjxpi2axdg04";
    };
  }
)
