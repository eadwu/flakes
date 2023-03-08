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
    version = "1678254541";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b2ea6aa9fc4c9bebc3d2c2992a891244819dbccd/code-insider-x64-1678254541.tar.gz";
      sha256 = "1ihj8gdgn3rh6m79jiaz10mrl6c3xmgv6c335l7ylqs5rslyzm32";
    };
  }
)
