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
    version = "1727701314";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b7894e64dd103a19dd5015326d8310232236de0f/code-insider-x64-1727701314.tar.gz";
      sha256 = "1p8wvl8zxaii3d1wgm1rjl04gc7l971w308wica9qp7hcilz12qs";
    };
  }
)
