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
    version = "1659079897";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/743b016722db90df977feecde0a4b3b4f58c2a4c/code-insider-x64-1659079897.tar.gz";
      sha256 = "18292z4b9j2kkia8bl7lxm9m1fwsf3i72czzmsx23q0x7bi0bxsp";
    };
  }
)
