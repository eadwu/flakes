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
    version = "1655185797";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ca8a8376b46b63db7379cbcc827c75d92bf25e14/code-insider-x64-1655185797.tar.gz";
      sha256 = "0ff05c99y12i2g3z4rr3s48q9q02hpmca0d7lj9alblwdznh832s";
    };
  }
)
