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
    version = "1699421676";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7771124ebd6b7f6e60da14d744961b717b73282f/code-insider-x64-1699421676.tar.gz";
      sha256 = "0kf0wra1nrq6hpbz2h2yas4x9cy4x94d2pvzyvz4qp3wl963kyds";
    };
  }
)
