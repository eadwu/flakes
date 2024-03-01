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
    version = "1709272139";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/19ecb4b8337d0871f0a204853003a609d716b04e/code-insider-x64-1709272139.tar.gz";
      sha256 = "0gk1zgiwhzdkpdkpnpniiys5jh1ydp74rmh3d8wzfs2w0klarrh1";
    };
  }
)
