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
    version = "1644226417";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/97c1e76d668d23d568044feb31083407f4c4b1ed/code-insider-x64-1644226417.tar.gz";
      sha256 = "10ypy4f6z2yy5f3c0ihbv4ginmib99zghc0div6qjgym694pymx5";
    };

    postPatch = "";
  }
)
