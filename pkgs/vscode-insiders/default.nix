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
    version = "1666158413";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7ea2788a43a4c35d8da63a419725ba2485de395b/code-insider-x64-1666158413.tar.gz";
      sha256 = "1wa1yc4wa4x1pybx9zyin364pbgs9v8rl164zd4d0bfhzcbxv4pq";
    };
  }
)
