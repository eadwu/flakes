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
    version = "1640065317";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e8a26d3ebf5095d4324ad4bf794787540ed3b33e/code-insider-x64-1640065317.tar.gz";
      sha256 = "01i55hir5xz2av8wvdjsg2g6d4wfbmd4gl6mxh9diz0hpj6h1fm9";
    };

    postPatch = "";
  }
)
