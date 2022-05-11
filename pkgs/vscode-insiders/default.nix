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
    version = "1652228564";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ba8ced85c51569bbc2c51a24398c15ed6b61d8d3/code-insider-x64-1652228564.tar.gz";
      sha256 = "1w1bcldia6w90i1jw10wpfkh5fgiss76cijbqcfyqmyxy5pdg275";
    };

    postPatch = "";
  }
)
