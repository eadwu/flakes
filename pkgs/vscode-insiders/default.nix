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
    version = "1662461979";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/daf5eb22623fb2cc586453147fc4dab98cf10b1d/code-insider-x64-1662461979.tar.gz";
      sha256 = "06h5q3123iq86ndvn6m4vbmamsv1b2fjfhxgs78dn4kjbv6vk70p";
    };
  }
)
