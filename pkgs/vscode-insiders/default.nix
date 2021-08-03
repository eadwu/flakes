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
    version = "1628006280";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/cead2f699cd0afb2464d8d3ad975776051583b4f/code-insider-x64-1628006280.tar.gz";
      sha256 = "0vmpsmjg21gg54f52lapg96iykg8q4vy6l4srz7jj36n62342ikx";
    };
  }
)
