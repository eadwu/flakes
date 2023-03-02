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
    version = "1677762148";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/155cd6db223feb1f8c734ca70e108b9efec7b054/code-insider-x64-1677762148.tar.gz";
      sha256 = "09hbcnrinln0ifr2vqik924gn2jl35invb8q7j3mdwrkglpwx878";
    };
  }
)
