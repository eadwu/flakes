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
    version = "1680085507";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7f329fe6c66b0f86ae1574c2911b681ad5a45d63/code-insider-x64-1680085507.tar.gz";
      sha256 = "0my5h2w2cbbx4ih2sxw5m0plyy1mac8m2jqdmjir1kp8vg38ifjq";
    };
  }
)
