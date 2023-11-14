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
    version = "1699853930";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/345c8d0927402d41f42402411d856eeec4013e5e/code-insider-x64-1699853930.tar.gz";
      sha256 = "08wrmdrikw77f2i5v6xlphm8k8wdkg4njkbn284iwq0mv3w8yba2";
    };
  }
)
