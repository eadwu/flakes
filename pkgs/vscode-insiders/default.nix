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
    version = "1675662589";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/c9e3ef865539061b5602c6b9ac6030332aa1ce70/code-insider-x64-1675662589.tar.gz";
      sha256 = "1w8w78z12lqk0yz0vzy6dgx3nankivgr9qa6b2nk7x63rq56w0zd";
    };
  }
)
