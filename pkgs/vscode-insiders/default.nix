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
    version = "1689226541";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2f1013a310bbd74410e74fad99497841edad0eda/code-insider-x64-1689226541.tar.gz";
      sha256 = "144rpi8jwavdip6xlnjdbp7d6csplsg4plif94r0k2r89laic7la";
    };
  }
)
