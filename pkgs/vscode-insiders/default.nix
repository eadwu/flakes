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
    version = "1700458433";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e0b9ba5710060c8a8014f8a12980f011d81fb844/code-insider-x64-1700458433.tar.gz";
      sha256 = "04ccrjs2h5alr97g5v4za8n0y6z856jbq8d8zi92rnl4hkhd9h6w";
    };
  }
)
