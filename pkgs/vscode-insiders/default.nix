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
    version = "1633671846";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0dae77d06e33eaf1616cc1a53d77e717b284a626/code-insider-x64-1633671846.tar.gz";
      sha256 = "0yaiq1x8xscp0y1c5gzrjl6c8hp7pr6fmna5s8g8s2vrai4d10x8";
    };
  }
)
