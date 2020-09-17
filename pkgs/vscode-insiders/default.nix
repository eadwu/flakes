{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1600327209";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d1f267742169584db010716d92addf50d4cd8139/code-insider-x64-1600327209.tar.gz";
      sha256 = "1zigqiplxjcp473giz38a5fmj2jgrvp9b2jzw8l8mqa7b99s0gjn";
    };
  }
)
