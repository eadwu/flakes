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
    version = "1690272763";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/fda972663af87b4d1dab87845e36c357738b44f9/code-insider-x64-1690272763.tar.gz";
      sha256 = "09x2l6v7p4abjgx653hsjj0lf7chmldcwp7hqlky20zdiqrgf803";
    };
  }
)
