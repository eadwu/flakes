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
    version = "1675862205";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/beb9ed3758624b918f918886bb904b0b62511c08/code-insider-x64-1675862205.tar.gz";
      sha256 = "0am90qz37yv83qgyhh63dcc65fdzc8wg1v7viyc42ihlv345f73v";
    };
  }
)
