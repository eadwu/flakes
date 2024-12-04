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
    version = "1733291234";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/64e869f7ddf58d76097dc5ab7f36515044304b25/code-insider-x64-1733291234.tar.gz";
      sha256 = "038w05yzikkn5hqfm99brxr2i0w8sa6vhzq4fyq63ias5k363vff";
    };
  }
)
