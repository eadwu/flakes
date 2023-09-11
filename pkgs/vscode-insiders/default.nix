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
    version = "1694410389";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3c133b63c6e17e2fe33f37db93a6d43e78a262c5/code-insider-x64-1694410389.tar.gz";
      sha256 = "1appvxfgqzb8qvc28nx0j83ycfbqinmrh2dc9kz94dwmrg9fbx45";
    };
  }
)
