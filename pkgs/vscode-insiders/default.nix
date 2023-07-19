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
    version = "1689745044";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c85bf61a82b0c39886b032d2634108782a55c637/code-insider-x64-1689745044.tar.gz";
      sha256 = "15b7iyipr094nlh9g1z0s7fbbsq93v3g1nqw357f95wfx70v6n66";
    };
  }
)
