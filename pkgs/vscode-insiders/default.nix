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
    version = "1676267719";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/f718f1ace394dba4255774ac3f1c9321f629f8ff/code-insider-x64-1676267719.tar.gz";
      sha256 = "0l77df461ywgqi01xq09z60jxgjjlasz5jxp4ahsbxapqxh6w9ws";
    };
  }
)
