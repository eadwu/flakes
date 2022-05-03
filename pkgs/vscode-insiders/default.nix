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
    version = "1651582954";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7295846887c3a4bf911ba2bd1e64971321cbbb07/code-insider-x64-1651582954.tar.gz";
      sha256 = "00i3vfy3r716gx7mbif83xrblz4m4vx5bn220n2cmckl2gq8c4g1";
    };

    postPatch = "";
  }
)
