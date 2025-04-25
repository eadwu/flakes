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
    version = "1745558596";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c90ebc27218affc8231b0acf4fd4e6856499dd2f/code-insider-x64-1745558596.tar.gz";
      sha256 = "1wviy25ql77qpgb2m6rl47jj6livb1khk8l6lhhl2lfhsavrrzxr";
    };
  }
)
