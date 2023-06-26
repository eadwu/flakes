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
    version = "1687758906";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b4952d14a465572e33f0635ef58de089227b8876/code-insider-x64-1687758906.tar.gz";
      sha256 = "013p5wk5daj4wiiyz14r0hjkd987rp4k34xmgbkf45y1lhvdjp7w";
    };
  }
)
