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
    version = "1675124860";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/0615c4f98b07b51d3be6a357e22afec119490c5a/code-insider-x64-1675124860.tar.gz";
      sha256 = "0xnx0qp0nzamfzg60871h05xqz0lz2hrx03q6as325b2k8p6b5s6";
    };
  }
)
