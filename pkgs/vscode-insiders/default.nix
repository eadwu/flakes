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
    version = "1657691139";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/052d5b0027f6c9d64c8ca35955cb5117ba94d5d7/code-insider-x64-1657691139.tar.gz";
      sha256 = "1h2xg1jy8ik3rih4gpk88fdzbkql7q9lxk8dsyalchxfjcs4i4sb";
    };
  }
)
