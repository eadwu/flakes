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
    version = "1660065992";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bcb31b9cfb2261ddbabfb73defed9ae78680b9b2/code-insider-x64-1660065992.tar.gz";
      sha256 = "0v3m16zz2q4psc4bhc16wicyk4vc638psyvh7g4dn20j4damg6g7";
    };
  }
)
