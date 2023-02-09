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
    version = "1675921672";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/853b32bad26ed5ffe2d29b95be45adc7f753e35a/code-insider-x64-1675921672.tar.gz";
      sha256 = "0vsl1sxb1cz52afk3hcm822sk7nclyh5nh5h5hgxd41xishj3fcm";
    };
  }
)
