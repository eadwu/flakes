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
    version = "1641897091";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/00f1ca47ada2fda8ee1437e17b27af5b4002cecb/code-insider-x64-1641897091.tar.gz";
      sha256 = "1xj7zaw0n9qw5k44ggz4kqxqdn2s3y57hw6zfi6ar08n7frcrp4f";
    };

    postPatch = "";
  }
)
