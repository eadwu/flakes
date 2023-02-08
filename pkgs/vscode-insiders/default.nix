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
    version = "1675835409";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/a7d49b0f35f50e460835a55d20a00a735d1665a3/code-insider-x64-1675835409.tar.gz";
      sha256 = "1p1336ckrlm6dr4lc0jfiz0qddxxaqvvqb96y0ibqx50alpy7bwi";
    };
  }
)
