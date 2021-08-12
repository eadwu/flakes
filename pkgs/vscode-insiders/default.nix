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
    version = "1628796926";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/699084fdb48460c68086b85b5c08f3d39055e772/code-insider-x64-1628796926.tar.gz";
      sha256 = "084nv6h98wmnx0jx0mdm320s84yqnl1ifarv8nqx21hbq4khdp4k";
    };
  }
)
