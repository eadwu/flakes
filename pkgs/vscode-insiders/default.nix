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
    version = "1609479420";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/98106c48a07d4d07f0f71b4db9b3ff156f223339/code-insider-x64-1609479420.tar.gz";
      sha256 = "0gdkr2q1lb1iy3j5709bxm9qjffxvmim7wpj16kvp79l28lwq61g";
    };
  }
)
