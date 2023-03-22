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
    version = "1679464098";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b8e4c550bc87aa1db64e612706ac5238035e9cc2/code-insider-x64-1679464098.tar.gz";
      sha256 = "146ysmby2f58fd5z73i36mq97fbgam5vnm4qvq0195wcjbkv0c7x";
    };
  }
)
