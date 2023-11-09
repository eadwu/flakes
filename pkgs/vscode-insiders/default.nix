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
    version = "";

    src = fetchurl {
      url = "https://update.code.visualstudio.com/latest/linux-x64/insider";
      sha256 = "0kf0wra1nrq6hpbz2h2yas4x9cy4x94d2pvzyvz4qp3wl963kyds";
    };
  }
)
