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
    version = "1730231312";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/50a2adc65b8bf6ba353c6927c2f1f19ce6701c4d/code-insider-x64-1730231312.tar.gz";
      sha256 = "0xhay2izgqyyyy787vkm04i4b0qx4hbg7d4lqijm7zimmyb436ss";
    };
  }
)
