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
    version = "1649741993";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/fcaeb69ec8e96057423f7dadd52e116e29b80cae/code-insider-x64-1649741993.tar.gz";
      sha256 = "1c7zfg0bapj5ldwnys3d3f0h88kgrjfkxx985rqnrpb0012l8gx9";
    };

    postPatch = "";
  }
)
