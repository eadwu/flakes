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
    version = "1674830840";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/da0309f2514ac22ac82dcd080cfc764fe2a1f434/code-insider-x64-1674830840.tar.gz";
      sha256 = "0rabsi0zlj95ygihf1j2q98m6jj5hzaamakswhk4nz118ns167mg";
    };
  }
)
