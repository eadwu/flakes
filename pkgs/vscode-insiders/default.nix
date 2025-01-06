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
    version = "1736143059";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/8cc255e03ac7c51804cea1194b1ea864bbe2ccb6/code-insider-x64-1736143059.tar.gz";
      sha256 = "01s3r1sjl4cnj1y0r6zggbbq3jj1cxc8wpnlvmbi05sjlqmhgj22";
    };
  }
)
