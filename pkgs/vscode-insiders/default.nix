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
    version = "1668664362";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d9a70c4236a8bde4fe7435df3ecdd333c7bc939c/code-insider-x64-1668664362.tar.gz";
      sha256 = "0rvmkzf377fb35jzc5h5phnc6b4sxjmb7yv0zcq2k0bwrdrhajh6";
    };
  }
)
