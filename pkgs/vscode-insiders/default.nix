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
    version = "1651038028";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/410fe0fc7890ef563830bb86cbcd763995bfc65f/code-insider-x64-1651038028.tar.gz";
      sha256 = "0rcl5lisj62v53ny1qg935yszc9s18b2bgj3n407qz5xn5fwyy44";
    };

    postPatch = "";
  }
)
