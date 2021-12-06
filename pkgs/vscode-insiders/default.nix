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
    version = "1638829168";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7db1a2b88f7557e0a43fec75b6ba7e50b3e9f77e/code-insider-x64-1638829168.tar.gz";
      sha256 = "1xphr8df7ygsg96nr8s222by51mza64habaqpjs2l2jj156zmq58";
    };

    postPatch = "";
  }
)
