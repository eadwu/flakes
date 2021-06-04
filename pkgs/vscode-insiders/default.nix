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
    version = "1622784676";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/387e2f39ebbbf50d4b488f900b2a745972764015/code-insider-x64-1622784676.tar.gz";
      sha256 = "0fzjs3ryw3r65a7vgm0v0qmfkxwsjf31rpw16mp4m7x0f45yad61";
    };
  }
)
