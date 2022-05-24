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
    version = "1653370754";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/27ea5e48aef2a62b76ab170026ade228ded8abdf/code-insider-x64-1653370754.tar.gz";
      sha256 = "0l8hdqjh8vjf2xx9xd6mn9ga3mkwhpk6fcrh8shas26kqa1qa1jb";
    };

    postPatch = "";
  }
)
