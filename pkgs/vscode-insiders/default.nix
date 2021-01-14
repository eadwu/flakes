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
    version = "1610606327";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c265dff48a27868c7f0f84fd25a169897dc43d73/code-insider-x64-1610606327.tar.gz";
      sha256 = "1aj7bgv7nyjilh3i20vvl9vb5mxpg7rjy463p72zhbc5d1m6143v";
    };
  }
)
