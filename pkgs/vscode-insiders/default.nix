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
    version = "1625608150";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4c952751a88154ff4c375b1ca78293ab53a5792a/code-insider-x64-1625608150.tar.gz";
      sha256 = "07a7dmsmvan34fwgj3ywzyr7fiw2a5scpw1ypvhzs3zsp301dq9b";
    };
  }
)
