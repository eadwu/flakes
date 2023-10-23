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
    version = "1698082373";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2f32f0edae007ddd03699c325a451184c4c5e89b/code-insider-x64-1698082373.tar.gz";
      sha256 = "0ay23bwi244dbmgbarms5r2xzgv6k51wv51sypmja9v1jh4ri35m";
    };
  }
)
