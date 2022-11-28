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
    version = "1669614533";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ac084d723b7405591d2110fe374648345ecb8ce6/code-insider-x64-1669614533.tar.gz";
      sha256 = "1wy19p515b4zv64s8vdzs1g8sw8f3pyhpsry896hsvs5vxdnb9x8";
    };
  }
)
