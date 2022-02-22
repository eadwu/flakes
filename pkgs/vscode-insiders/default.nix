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
    version = "1645541788";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/eeeab304b9ac777b4a8dddf55f66ffebd9e4e7f2/code-insider-x64-1645541788.tar.gz";
      sha256 = "1d3kl493wxjbin0wkfzzvv7fb7raxgysfnn09pvj1kdcgsdjah27";
    };

    postPatch = "";
  }
)
