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
    version = "1617962647";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/845efe5d8e31079cc858131c95c36103d9439e74/code-insider-x64-1617962647.tar.gz";
      sha256 = "1a4srgxwhqiy90wil2gr0bqm9ml7swwhk2hih3w5ph7l746hxywc";
    };
  }
)
