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
    version = "1671428831";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/64a739f7aa1092187348afa9378931d47683be12/code-insider-x64-1671428831.tar.gz";
      sha256 = "0g4cj01xkbx8mw6agprhx3lpq2jqrlqaw9q4lpjncp03zl3jv3i9";
    };
  }
)
