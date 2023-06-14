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
    version = "1686703284";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/990d40aad4e5fe57500132cae7ad8c69950399b0/code-insider-x64-1686703284.tar.gz";
      sha256 = "1irqqfm3cl1hkzbbcwmrbj54akrqqwzssq9qmx7f0swf3mv27c70";
    };
  }
)
