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
    version = "1733435275";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/3781e5f084838b16d9bb16998cd476f232b2ff5f/code-insider-x64-1733435275.tar.gz";
      sha256 = "0f9bg986ypb80s29vr7z4r3006qpmz7kb4kqcz66p83cq6jrpx23";
    };
  }
)
