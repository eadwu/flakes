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
    version = "1679377912";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/833ac685084e2028b09753392b82c641c7025bbc/code-insider-x64-1679377912.tar.gz";
      sha256 = "044pc0q1f3mgk19yv0yrnxw2ww3sbv54qflx6zhmlq540a2i1gac";
    };
  }
)
