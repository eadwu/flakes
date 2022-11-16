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
    version = "1668578033";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/edccbd1307ef8055f26778c5a86f9eef885bc6ff/code-insider-x64-1668578033.tar.gz";
      sha256 = "11mpj0ryv9nj1lrcqn3q02lp8il9a88wyx0whk8q08lbcg7klcwd";
    };
  }
)
