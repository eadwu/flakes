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
    version = "1637828579";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1e473b624f088fc05269891170a8ffa1c84a35a6/code-insider-x64-1637828579.tar.gz";
      sha256 = "1j4cgkxa8vnvfwcixy5h27jixwik9ni58sgcb0ywg5xl6nsxs9hl";
    };

    postPatch = "";
  }
)
