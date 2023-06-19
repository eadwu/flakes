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
    version = "1687154270";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/73eb619afb87cab4aa83a569259c891b6983c11e/code-insider-x64-1687154270.tar.gz";
      sha256 = "12byjcy4rwck47i7f2s4j94q683lhdfs1iqs1kh38156pds8s03i";
    };
  }
)
