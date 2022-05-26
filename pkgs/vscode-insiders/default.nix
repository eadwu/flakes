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
    version = "1653543586";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/528ee1ae3daabe30c1307cf9dcd6e77eb96094bc/code-insider-x64-1653543586.tar.gz";
      sha256 = "0db135v4mg8dkrpcqjhch8vhlglwvad3fg2mamjlafry2mxqlc5c";
    };

    postPatch = "";
  }
)
