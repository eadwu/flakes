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
    version = "1659507870";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/da76f93349a72022ca4670c1b84860304616aaa2/code-insider-x64-1659507870.tar.gz";
      sha256 = "14mfd6k0zkz0lqdxc4sylzj4v89yr7mckffd98zcrv8r5qr0vlqd";
    };
  }
)
