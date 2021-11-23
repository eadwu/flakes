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
    version = "1637646829";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ed3018f4310e906daa0a9119d997e75b8a38b879/code-insider-x64-1637646829.tar.gz";
      sha256 = "0kfap6dqx36qxdgg5zc0ngmajafm1q3nm4ijxbsj6ds16j3wisxh";
    };
  }
)
