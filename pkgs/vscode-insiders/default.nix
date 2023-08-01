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
    version = "1690843401";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4dfb92c1736a68cbede67a373f6050594836f2fb/code-insider-x64-1690843401.tar.gz";
      sha256 = "0af0d4qlyz8maza3m83wzxnllxg7v4hrcf67ggxm4d8ii69a26vr";
    };
  }
)
