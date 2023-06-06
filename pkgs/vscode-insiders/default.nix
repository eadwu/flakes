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
    version = "1686065082";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/aee52551e25d98391f9064996196cd83a9fc8669/code-insider-x64-1686065082.tar.gz";
      sha256 = "1fybvg7dazls46dxm23lb37xqp4r3pq3qgz0840c1cy60w6d5hs3";
    };
  }
)
