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
    version = "1626673174";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d624242076d166bb8ce8b314e8d44b8af6100a3d/code-insider-x64-1626673174.tar.gz";
      sha256 = "1s5k3q8wq2n16hbwzj0pkanhl84k2s8x47sa9nlzbysacvxpfw6y";
    };
  }
)
