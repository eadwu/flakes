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
    version = "1629265037";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0214d59846f265d9e50f53b61e2267407d81cbfb/code-insider-x64-1629265037.tar.gz";
      sha256 = "0zin6qxq898dza98h5d8n3vsi0dnaccds7zgw88076w0b60idc28";
    };
  }
)
