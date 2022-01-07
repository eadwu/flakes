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
    version = "1641550965";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/419e16a49c7bffc23b8e5f0f9f35ee34167f20e1/code-insider-x64-1641550965.tar.gz";
      sha256 = "0f9f3nc9326m9n8d6v3240vz6gxb2s91hc75yw1ns2641hslxmqa";
    };

    postPatch = "";
  }
)
