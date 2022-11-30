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
    version = "1669769125";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8d585dbf89848ccb67527d81c6259325b17fecb8/code-insider-x64-1669769125.tar.gz";
      sha256 = "0nhf9ai3x1g55zm6yijcy5ncpmhzsjp8jz39c1iwkckp94920kwi";
    };
  }
)
