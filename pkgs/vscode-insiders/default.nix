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
    version = "1620236089";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b95b73b7b074f5dddccd57e5e290617f1a767ec1/code-insider-x64-1620236089.tar.gz";
      sha256 = "1qlb8dpd0nk1vgf5sd3kykqz0cc6yv6rnhv5vqbc0wlx5x6ym1q8";
    };
  }
)
