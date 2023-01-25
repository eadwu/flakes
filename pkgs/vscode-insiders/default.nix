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
    version = "1674625724";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/270c3b12906a88e9c67fc5ddef87be6aa3b75551/code-insider-x64-1674625724.tar.gz";
      sha256 = "18p93xxjybl12j5kbdv3pnid915ncs9188vhmmwhc3wsbc1lj7f1";
    };
  }
)
