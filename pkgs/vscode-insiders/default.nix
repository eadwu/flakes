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
    version = "1639114856";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/065b450db9f555f177161748e8f2911ebb5677f9/code-insider-x64-1639114856.tar.gz";
      sha256 = "1ni2sn2hnk3kjnzzfvxyizjhsy54354xbx2ri20jm726hpn8qsjz";
    };

    postPatch = "";
  }
)
