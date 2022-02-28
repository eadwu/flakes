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
    version = "1646060764";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b7730c807c1e0fdacdcc91a854bb963715b2a89b/code-insider-x64-1646060764.tar.gz";
      sha256 = "12hrjacmdryb7pbrhh4m6gx2hy0a3z0j2ammbav01yxh0car2grw";
    };

    postPatch = "";
  }
)
