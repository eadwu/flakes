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
    version = "1630704294";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/87260247dc7b912db6e6a21a366e6f50dca759ba/code-insider-x64-1630704294.tar.gz";
      sha256 = "0i98cw7ya1rm8dqazxs16aw2jd5xyap51q9p83h6h1b7zildmy46";
    };
  }
)
