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
    version = "1612199216";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/565dc9704f27619ad73867fddde6bbca88110c18/code-insider-x64-1612199216.tar.gz";
      sha256 = "0cffn7i2vgk06qbgpv6bip5mxgv7mkyk0qw19hsnmf6pjddl4hjv";
    };
  }
)
