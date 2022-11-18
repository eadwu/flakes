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
    version = "1668750725";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1b1e2a2c5794df1f475976062c754651827634a9/code-insider-x64-1668750725.tar.gz";
      sha256 = "06y4b7r8dlsqhj68mx4ip4y8jyxk8lznp074yb6s8abv1f57xmb6";
    };
  }
)
