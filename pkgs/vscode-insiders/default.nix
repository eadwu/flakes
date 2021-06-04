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
    version = "1622809906";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/fe1eafc80c07608de52a2f9c99fee103dea77f5e/code-insider-x64-1622809906.tar.gz";
      sha256 = "0yfiaxmbxlg0hsl8kmfmzv0zbix4phsprki1kvi1kx6pg0rikwdp";
    };
  }
)
