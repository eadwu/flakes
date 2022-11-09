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
    version = "1667972940";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/96db0b339360bc72d27d869d81a557540ad5f800/code-insider-x64-1667972940.tar.gz";
      sha256 = "1gyp0hriy3c05h0ygy0yim72yvaqb3v8jqcbgy51qdz9a11nwn54";
    };
  }
)
