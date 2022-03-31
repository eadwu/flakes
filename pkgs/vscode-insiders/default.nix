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
    version = "1648725911";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/909602cf04e0fa42528d692676d0d4e15e67bba2/code-insider-x64-1648725911.tar.gz";
      sha256 = "15lq8fqcnq467xw6fhdcd5d4ykqkycliafllmk0fyz0rwy0i74d7";
    };

    postPatch = "";
  }
)
