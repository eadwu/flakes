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
    version = "1644471890";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/82a8bec63666b0883d9bf762ee2aaa87e9be9a3a/code-insider-x64-1644471890.tar.gz";
      sha256 = "1jp298s3jfsi9v4pyzpmzlz2h5xhpn8slklzijwzic17z2cbmfv7";
    };

    postPatch = "";
  }
)
