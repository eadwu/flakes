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
    version = "1710481673";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/be210b3a60c7d60030c1d3d92da00d008edf6ab9/code-insider-x64-1710481673.tar.gz";
      sha256 = "0a3mlp1sxc6p41abijsg4byl56xqphawmykmyg2acvk5ij7lk2i3";
    };
  }
)
