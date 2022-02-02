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
    version = "1643824057";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5554b12acf27056905806867f251c859323ff7e9/code-insider-x64-1643824057.tar.gz";
      sha256 = "0miscmfxiavq7ifg44l05g1378jds3xr4bj47cyvjpj1klsf97j8";
    };

    postPatch = "";
  }
)
