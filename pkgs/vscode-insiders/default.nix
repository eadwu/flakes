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
    version = "1623144925";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c7119ae8b6390a5700f6b28f0f1511d676c96562/code-insider-x64-1623144925.tar.gz";
      sha256 = "0vkwm7sa4ag4ikzig47ql92dnvj1yl6c828pfmdqaq9br00qhq5k";
    };
  }
)
