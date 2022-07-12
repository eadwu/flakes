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
    version = "1657620094";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f3528d481b366b24321c382d5e5849f4c7d65248/code-insider-x64-1657620094.tar.gz";
      sha256 = "1w0snwy2sd2wsfn1k7whymlazyi100n67c0bm1a2qjj7s7ywqv9w";
    };
  }
)
