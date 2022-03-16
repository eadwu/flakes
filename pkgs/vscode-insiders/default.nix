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
    version = "1647409488";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6fa3243d3facbbf8b87222bcf4e81c5eddf5d47f/code-insider-x64-1647409488.tar.gz";
      sha256 = "0rldx05sk2z4k1pxiv41fjmxvh388xn1maw7f1b5gf625ar56200";
    };

    postPatch = "";
  }
)
