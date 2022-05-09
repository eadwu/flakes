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
    version = "1652100481";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/42b1f560e3badc792056a1021094fbf859588d8d/code-insider-x64-1652100481.tar.gz";
      sha256 = "1aa8kldk2q2rj5mgy8skg5rd5y8q8l584gncnamy5vqzir1pnp2c";
    };

    postPatch = "";
  }
)
